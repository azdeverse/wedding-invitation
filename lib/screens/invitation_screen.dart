import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:site_tst/widgets/floating_image.dart';
import 'package:site_tst/widgets/gift_card_widget.dart';
import 'package:site_tst/widgets/location_widget.dart';
import 'package:site_tst/widgets/music_button.dart';
import 'package:site_tst/widgets/section_divider.dart';
import '../widgets/countdown_widget.dart';
import '../constants/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:animate_do/animate_do.dart';

class InvitationScreen extends StatelessWidget {
  const InvitationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        forceMaterialTransparency: false,
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: Padding(
          padding: EdgeInsets.only(left: 10, top: 10),
          child: MusicButton(),
        ),
      ),
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  FadeInUp(
                    duration: const Duration(milliseconds: 800),
                    child: Text(
                      "بِسْمِ اللهِ الرَّحْمٰنِ الرَّحِيْمِ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Amiri",
                        fontSize: 28,
                        color: AppColors.primaryGold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 70),

                  FadeInUp(
                    delay: const Duration(milliseconds: 600),
                    duration: const Duration(milliseconds: 800),
                    child: Text(
                      "Assalomu alaykum va rohmatullohi va barokatuh",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Cormorant",
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textDark,
                      ),
                    ),
                  ),

                  const SizedBox(height: 50),

                  FadeInUp(
                    delay: const Duration(milliseconds: 700),
                    duration: const Duration(milliseconds: 800),

                    child: Text(
                      "Alloh taoloning izni va marhamati ila\nsizni nikoh to'yimizga taklif etamiz",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "EBGaramond",
                        fontSize: 20,
                        height: 1.8,
                        color: const Color(0xFF5F5648),
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),

                  const SizedBox(height: 50),

                  FadeInUp(
                    delay: const Duration(milliseconds: 1200),
                    duration: const Duration(milliseconds: 800),
                    child: Text(
                      "Jamshid",
                      style: TextStyle(
                        fontFamily: "Cinzel",
                        fontSize: 56,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 4,
                        color: AppColors.textDark,
                      ),
                    ),
                  ),

                  FadeInUp(
                    delay: const Duration(milliseconds: 1200),
                    duration: const Duration(milliseconds: 800),
                    child: Text(
                      "&",
                      style: TextStyle(
                        fontFamily: "PlayfairDisplay",
                        fontSize: 38,
                        color: AppColors.primaryGold,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  FadeInUp(
                    delay: const Duration(milliseconds: 1200),
                    duration: const Duration(milliseconds: 800),
                    child: Text(
                      "Nozima",
                      style: TextStyle(
                        fontFamily: "Cinzel",
                        fontSize: 56,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 4,
                        color: AppColors.textDark,
                      ),
                    ),
                  ),

                  const SizedBox(height: 50),
                  const FloatingImage(),
                  const SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(28),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF8F2E8),
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                        color: AppColors.primaryGold,
                        width: 1.5,
                      ),
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
                          Icons.auto_awesome,
                          color: AppColors.primaryGold,
                          size: 30,
                        ),

                        const SizedBox(height: 16),

                        Text(
                          "Ezgu tilak",
                          style: TextStyle(
                            fontFamily: "Cormorant",
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryGold,
                          ),
                        ),

                        const SizedBox(height: 20),

                        Text(
                          "Alloh taolo ikki qalbni muhabbat,\nsadoqat va baraka ila birlashtirdi.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 15,
                            height: 1.8,
                            color: Colors.black87,
                          ),
                        ),

                        const SizedBox(height: 12),

                        Text(
                          "Ushbu quvonchli kunimizda siz aziz\nmehmonimiz bo'lishingizni chin dildan istaymiz.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 14,
                            height: 1.8,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  Column(
                    children: [
                      Text(
                        "Dekabr, 2026",
                        style: TextStyle(
                          fontFamily: "Cormorant",
                          fontSize: 42,
                          fontWeight: FontWeight.w600,
                          color: AppColors.primaryGold,
                        ),
                      ),

                      const SizedBox(height: 24),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text("DU"),
                          Text("SE"),
                          Text("CH"),
                          Text("PA"),
                          Text("JU"),
                          Text("SH"),
                          Text("YA"),
                        ],
                      ),

                      const SizedBox(height: 24),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("20"),
                          Text("21"),

                          Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              color: AppColors.primaryGold,
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Text(
                                "22",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),

                          const Text("23"),
                          const Text("24"),
                          const Text("25"),
                          const Text("26"),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF8F2E8),
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                        color: AppColors.primaryGold,
                        width: 1.5,
                      ),
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
                        Text(
                          "Nikoh tantanasigacha qoldi",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 14,
                            letterSpacing: 2,
                            color: AppColors.primaryGold,
                          ),
                        ),

                        const SizedBox(height: 24),

                        FadeInUp(
                          duration: const Duration(milliseconds: 800),
                          child: CountdownWidget(),
                        ),

                        const SizedBox(height: 50),
                      ],
                    ),
                  ),

                  const SectionDivider(),
                  FadeInUp(
                    delay: const Duration(milliseconds: 200),
                    duration: const Duration(milliseconds: 800),
                    child: LocationSectipn(),
                  ),
                  const SectionDivider(),
                  const SizedBox(height: 50),
                  FadeInUp(
                    delay: const Duration(milliseconds: 400),
                    duration: const Duration(milliseconds: 800),
                    child: GiftCardSection(),
                  ),
                  const SizedBox(height: 60),

                  Text(
                    "Sizni baxtli kunimizda\nintiqlik bilan kutamiz.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "PlayfairDisplay",
                      fontSize: 24,
                      height: 1.8,
                      color: AppColors.textDark,
                    ),
                  ),

                  const SizedBox(height: 80),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(width: 40, height: 1, color: Colors.black26),
                      const SizedBox(width: 10),
                      Text(
                        "by avazstudio",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 11,
                          color: Colors.black38,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(width: 40, height: 1, color: Colors.black26),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> openGoogleMaps() async {
  final url = Uri.parse(
    'https://maps.google.com/?q=Yakka+Saroy+Restaurant+Qarshi',
  );

  await launchUrl(url, mode: LaunchMode.externalApplication);
}

Future<void> openYandexMaps() async {
  final url = Uri.parse('https://yandex.uz/maps/');

  await launchUrl(url, mode: LaunchMode.externalApplication);
}

Widget _timeBox(String value, String label) {
  return Container(
    width: 75,
    height: 95,
    decoration: BoxDecoration(
      color: AppColors.cardColor,
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: AppColors.dividerColor),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          value,
          style: TextStyle(
            fontFamily: "Cormorant",
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 6),
        Text(label, style: TextStyle(fontSize: 11, fontFamily: "Poppins")),
      ],
    ),
  );
}
