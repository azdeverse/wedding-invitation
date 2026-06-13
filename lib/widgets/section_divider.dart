import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class SectionDivider extends StatelessWidget {
  const SectionDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 36),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 1,
              color: AppColors.dividerColor,
            ),
          ),
          const SizedBox(width: 16),
          Icon(
            Icons.diamond_outlined,
            size: 16,
            color: AppColors.primaryGold,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Container(
              height: 1,
              color: AppColors.dividerColor,
            ),
          ),
        ],
      ),
    );
  }
}