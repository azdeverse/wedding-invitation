import 'package:flutter/material.dart';
import 'package:site_tst/constants/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';


class LocationSectipn extends StatefulWidget {
  const LocationSectipn({super.key});

  @override
  State<LocationSectipn> createState() => _LocationSectipnState();
}

class _LocationSectipnState extends State<LocationSectipn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "To'y manzili",
            style: TextStyle(
              fontFamily: "Cormorant",
              fontSize: 36,
              fontWeight: FontWeight.w600,
              color: AppColors.textDark,
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
          children: [
            Icon(
              Icons.location_on_outlined,
              size: 42,
              color: AppColors.primaryGold,
            ),

            const SizedBox(height: 16),

            Text(
              "Millat Umidi University",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "PlayfairDisplay",
                fontSize: 34,
                fontWeight: FontWeight.w600,
                color: AppColors.textDark,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              "Toshkent shahri",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "EBGaramond",
                fontSize: 20,
                color: Colors.black54,
              ),
            ),

            const SizedBox(height: 24),

            Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () async {
                      final url = Uri.parse(
                        'https://maps.google.com/?q=Millat+Umidi+University+Tashkent',
                      );

                      await launchUrl(url);
                    },
                    icon: const Icon(Icons.map),
                    label: const Text("Google Maps"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryGold,
                      foregroundColor: Colors.white,
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () async {
                      final url = Uri.parse(
                        'https://yandex.uz/maps/?text=Millat+Umidi+University+Tashkent',
                      );

                      await launchUrl(url);
                    },
                    icon: const Icon(Icons.location_on),
                    label: const Text("Yandex Maps"),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: AppColors.primaryGold,
                      side: BorderSide(color: AppColors.primaryGold),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
     ],
      ),);
  }
}
