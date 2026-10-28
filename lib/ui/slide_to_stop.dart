import 'package:flutter/material.dart';

/// Jediné gesto v appce: posunutím doprava zastavit. V kapse se náhodou nestane.
class SlideToStop extends StatefulWidget {
  final VoidCallback onStop;
  final String label;
  const SlideToStop({super.key, required this.onStop, this.label = 'Posuň pro stop'});

  @override
  State<SlideToStop> createState() => _SlideToStopState();
}

class _SlideToStopState extends State<SlideToStop> {
  double _x = 0;
  static const _h = 76.0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, c) {
      final max = c.maxWidth - _h;
      return Container(
        height: _h,
        decoration: BoxDecoration(
          color: const Color(0xFF2A0E0E),
          borderRadius: BorderRadius.circular(_h / 2),
          border: Border.all(color: const Color(0xFFFF5252), width: 2),
        ),
        child: Stack(
          children: [
            Center(
              child: Opacity(
                opacity: (1 - _x / max).clamp(0, 1),
                child: Text(widget.label,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white)),
              ),
            ),
            Positioned(
              left: _x,
              child: GestureDetector(
                onHorizontalDragUpdate: (d) => setState(() => _x = (_x + d.delta.dx).clamp(0, max)),
                onHorizontalDragEnd: (_) {
                  if (_x > max * 0.85) widget.onStop();
                  setState(() => _x = 0);
                },
                child: Container(
                  width: _h - 4,
                  height: _h - 4,
                  margin: const EdgeInsets.all(0),
                  decoration: const BoxDecoration(color: Color(0xFFFF5252), shape: BoxShape.circle),
                  alignment: Alignment.center,
                  child: const Text('STOP',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900, color: Colors.black)),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
