import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

import '../core/settings.dart';

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

  Future<void> init() async {
    _sub = _iap.purchaseStream.listen(_onPurchases, onError: (Object e) {
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
      error = 'Obchod teď není dostupný.';
      notifyListeners();
      return;
    }
    error = null;
    pending = true;
    notifyListeners();
    await _iap.buyNonConsumable(purchaseParam: PurchaseParam(productDetails: p));
  }

  Future<void> restore() async {
    error = null;
    pending = true;
    notifyListeners();
    await _iap.restorePurchases();
    // Bez obnovitelných nákupů store nic nepošle — nečekáme věčně.
    Timer(const Duration(seconds: 8), () {
      if (pending) {
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
          pending = false;
        case PurchaseStatus.error:
          error = p.error?.message ?? 'Nákup se nepovedl.';
          pending = false;
        case PurchaseStatus.canceled:
          pending = false;
        case PurchaseStatus.pending:
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
