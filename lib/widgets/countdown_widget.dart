import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:site_tst/constants/app_colors.dart';

class CountdownWidget extends StatefulWidget {
  const CountdownWidget({super.key});

  @override
  State<CountdownWidget> createState() => _CountdownWidgetState();
}

class _CountdownWidgetState extends State<CountdownWidget> {
  late Timer timer;

  Duration remaining = Duration.zero;

  final weddingDate = DateTime(
    2026,
    12,
    22,
    18,
    0,
  );

  @override
  void initState() {
    super.initState();

    updateCountdown();

    timer = Timer.periodic(
      const Duration(seconds: 1),
      (_) => updateCountdown(),
    );
  }

  void updateCountdown() {
    final now = DateTime.now();

    setState(() {
      remaining = weddingDate.difference(now);
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  Widget buildBox(String value, String label) {
    return Container(
      
      width: 75,
      height: 95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppColors.primaryGold,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value,
            style: TextStyle(
                      fontFamily: 'Cormorant',
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          Text(label),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final days = remaining.inDays;

    final hours = remaining.inHours % 24;

    final minutes = remaining.inMinutes % 60;

    final seconds = remaining.inSeconds % 60;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildBox(days.toString(), "KUN"),
        buildBox(hours.toString(), "SOAT"),
        buildBox(minutes.toString(), "DAQIQA"),
        buildBox(seconds.toString(), "SONIYA"),
      ],
    );
  }
}