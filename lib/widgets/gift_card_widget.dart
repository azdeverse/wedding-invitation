import 'package:flutter/material.dart';
import 'package:site_tst/constants/app_colors.dart';

class GiftCardSection extends StatefulWidget {
  const GiftCardSection({super.key});

  @override
  State<GiftCardSection> createState() => _GiftCardSectionState();
}

class _GiftCardSectionState extends State<GiftCardSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "To'y sovg'asi",
            style: TextStyle(
              fontFamily: "Cormorant",
              fontSize: 36,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 24),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: const Color(0xFFF8F2E8),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: AppColors.primaryGold, width: 1.5),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 20,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('''Sovg'a va ezgu tilaklar

Alloh sizdan rozi bo'lsin.

Sizning tashrifingiz, samimiy duolaringiz va ezgu tilaklaringiz biz uchun eng qimmatli hadyadir.

Agar bizni quvontirish va to'y sovg'asi ulashishni istasangiz, quyidagi karta raqamidan foydalanishingiz mumkin.
''', style: TextStyle(height: 1.7, fontFamily: "Poppins")),

                const SizedBox(height: 24),

                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF8F2E8),
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(color: Colors.grey, width: 1.5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 20,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "KARTA RAQAMI",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 11,
                          letterSpacing: 2,
                        ),
                      ),

                      const SizedBox(height: 50),

                      Text(
                        "9860 0000 0000 0000",
                        style: TextStyle(
                          fontFamily: "Cormorant",
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 38),

                      const Text("Avazbek Yo'ldoshaliyev"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
