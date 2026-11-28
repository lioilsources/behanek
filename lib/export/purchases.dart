import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:ol1n_telemetry/ol1n_telemetry.dart';

import '../core/settings.dart';
import '../l10n/l10n.dart';

/// Jediný nákup v appce: odemčení importu GPX (non-consumable, 0,99).
/// ID produktu musí být stejné v App Store Connect i Play Console.
const importProductId = 'gpx_import';

class Purchases extends ChangeNotifier {
  final AppSettings settings;
  Purchases(this.settings);

  // Líně: plugin se nesmí probudit dřív než init() (a v testech vůbec).
  InAppPurchase get _iap => InAppPurchase.instance;
  StreamSubscription<List<PurchaseDetails>>? _sub;
  ProductDetails? product;
  bool available = false;
  bool pending = false;
  String? error;

  /// Měření: jeden nákup nebo obnovení (`purchase_start` / `purchase_end`).
  TelemetryFlow? _flow;

  void _endFlow(String result) {
    _flow?.end(result);
    _flow = null;
  }

  Future<void> init() async {
    _sub = _iap.purchaseStream.listen(_onPurchases, onError: (Object e) {
      _endFlow('error');
      Telemetry.errorShown('purchase_failed');
      error = '$e';
      pending = false;
      notifyListeners();
    });
    available = await _iap.isAvailable();
    if (available) {
      final r = await _iap.queryProductDetails({importProductId});
      product = r.productDetails.firstOrNull;
    }
    notifyListeners();
  }

  /// Cena ze storu (lokalizovaná měna); záloha, když store neodpoví.
  String get price => product?.price ?? '0,99 €';

  Future<void> buy() async {
    final p = product;
    if (p == null) {
      Telemetry.errorShown('store_unavailable');
      error = l10n.import_storeUnavailable;
      notifyListeners();
      return;
    }
    error = null;
    pending = true;
    _flow = Telemetry.flow('purchase', {'kind': 'buy'});
    notifyListeners();
    await _iap.buyNonConsumable(purchaseParam: PurchaseParam(productDetails: p));
  }

  Future<void> restore() async {
    error = null;
    pending = true;
    _flow = Telemetry.flow('purchase', {'kind': 'restore'});
    notifyListeners();
    final flow = _flow;
    await _iap.restorePurchases();
    // Bez obnovitelných nákupů store nic nepošle — nečekáme věčně.
    Timer(const Duration(seconds: 8), () {
      if (pending) {
        if (identical(_flow, flow)) _endFlow('none');
        pending = false;
        notifyListeners();
      }
    });
  }

  Future<void> _onPurchases(List<PurchaseDetails> list) async {
    for (final p in list) {
      if (p.productID != importProductId) continue;
      switch (p.status) {
        case PurchaseStatus.purchased:
        case PurchaseStatus.restored:
          await settings.set('importUnlocked', true, () => settings.importUnlocked = true);
          _endFlow('ok');
          pending = false;
        case PurchaseStatus.error:
          _endFlow('error');
          Telemetry.errorShown('purchase_failed');
          error = p.error?.message ?? l10n.import_purchaseFailed;
          pending = false;
        case PurchaseStatus.canceled:
          _endFlow('cancel');
          pending = false;
        case PurchaseStatus.pending:
          _endFlow('pending');
          pending = true;
      }
      if (p.pendingCompletePurchase) await _iap.completePurchase(p);
    }
    notifyListeners();
  }

  @override
  void dispose() {
    _sub?.cancel();
    super.dispose();
  }
}
