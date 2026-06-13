import 'package:flutter/material.dart';

class EnvelopeWidget extends StatefulWidget {
  final VoidCallback onOpened;

  const EnvelopeWidget({
    super.key,
    required this.onOpened,
  });

  @override
  State<EnvelopeWidget> createState() => _EnvelopeWidgetState();
}

class _EnvelopeWidgetState extends State<EnvelopeWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  bool opened = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
  }

  void openEnvelope() async {
    if (opened) return;

    opened = true;

    await _controller.forward();

    await Future.delayed(
      const Duration(milliseconds: 500),
    );

    widget.onOpened();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: openEnvelope,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return SizedBox(
            width: 320,
            height: 240,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 320,
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2ECE3),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.08),
                        blurRadius: 20,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                ),

                Transform.translate(
                  offset: Offset(
                    0,
                    -80 * _controller.value,
                  ),
                  child: Container(
                    width: 260,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "22 Dekabr 2026",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

                Positioned(
                  top: 0,
                  child: Transform.rotate(
                    angle: -3.14 * _controller.value,
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 320,
                      height: 110,
                      decoration: const BoxDecoration(
                        color: Color(0xFFD8C9AE),
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(12),
                        ),
                      ),
                    ),
                  ),
                ),

                Transform.scale(
                  scale: 1 + (_controller.value * 0.15),
                  child: const CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xFFD4AF37),
                    child: Text(
                      "A&M",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}