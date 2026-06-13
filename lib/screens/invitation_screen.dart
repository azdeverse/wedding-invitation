import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:site_tst/widgets/music_button.dart';
import 'package:site_tst/widgets/section_divider.dart';
import '../widgets/countdown_widget.dart';
import '../constants/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class InvitationScreen extends StatelessWidget {
  const InvitationScreen({super.key});



  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
      forceMaterialTransparency: false,
  toolbarHeight: 50,
  backgroundColor: AppColors.background,
  elevation: 0,
  leading: Padding(
    padding: EdgeInsets.only(left: 8),
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
                  Text(
                    "بِسْمِ اللهِ الرَّحْمٰنِ الرَّحِيْمِ",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.amiri(
                      fontSize: 28,
                      color: AppColors.primaryGold,
                    ),
                  ),
      
                  const SizedBox(height: 24),
      
                  Text(
                    "Assalomu alaykum",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.cormorantGaramond(
                      fontSize: 38,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textDark,
                    ),
                  ),
      
                  const SizedBox(height: 16),
      
                  Text(
                    "Alloh taoloning izni va marhamati ila\nsizni nikoh to'yimizga taklif etamiz",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.ebGaramond(
                      fontSize: 20,
                      height: 1.8,
                      color: const Color(0xFF5F5648),
                      fontStyle: FontStyle.italic,
                    ),
                  ),
      
                  const SizedBox(height: 40),
      
                  Text(
                    "ALI",
                    style: GoogleFonts.cinzel(
                      fontSize: 56,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 4,
                      color: AppColors.textDark,
                    ),
                  ),
      
                  Text(
                    "&",
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 38,
                      color: AppColors.primaryGold,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
      
                  Text(
                    "MEHROH",
                    style: GoogleFonts.cinzel(
                      fontSize: 56,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 4,
                      color: AppColors.textDark,
                    ),
                  ),
      
                  const SizedBox(height: 40),
                  Image.asset(
                    'assets/images/bride-groom-silhouette.png',
                    width: 340,
                  ),
      
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
                          style: GoogleFonts.cormorantGaramond(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryGold,
                          ),
                        ),
      
                        const SizedBox(height: 20),
      
                        Text(
                          "Alloh taolo ikki qalbni muhabbat,\nsadoqat va baraka ila birlashtirdi.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            height: 1.8,
                            color: Colors.black87,
                          ),
                        ),
      
                        const SizedBox(height: 12),
      
                        Text(
                          "Ushbu quvonchli kunimizda siz aziz\nmehmonimiz bo'lishingizni chin dildan istaymiz.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
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
                        style: GoogleFonts.cormorantGaramond(
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
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            letterSpacing: 2,
                            color: AppColors.primaryGold,
                          ),
                        ),
      
                        const SizedBox(height: 24),
      
                        const CountdownWidget(),
      
                        const SizedBox(height: 50),
                      ],
                    ),
                  ),
      
                  const SectionDivider(),
                  Text(
                    "To'y manzili",
                    style: GoogleFonts.cormorantGaramond(
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
                          Icons.location_on_outlined,
                          size: 42,
                          color: AppColors.primaryGold,
                        ),
      
                        const SizedBox(height: 16),
      
                        Text(
                          "Millat Umidi University",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 34,
                            fontWeight: FontWeight.w600,
                            color: AppColors.textDark,
                          ),
                        ),
      
                        const SizedBox(height: 10),
      
                        Text(
                          "Toshkent shahri",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.ebGaramond(
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
      'https://maps.google.com/?q=Millat+Umidi+University+Tashkent'
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
                                   'https://yandex.uz/maps/?text=Millat+Umidi+University+Tashkent'
                                  );
      
                                  await launchUrl(url);
                                },
                                icon: const Icon(Icons.location_on),
                                label: const Text("Yandex Maps"),
                              style: OutlinedButton.styleFrom(
      foregroundColor: AppColors.primaryGold,
      side: BorderSide(
        color: AppColors.primaryGold,
      ),
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
                  const SectionDivider(),
                  const SizedBox(height: 50),
      
                  Text(
                    "To'y sovg'asi",
                    style: GoogleFonts.cormorantGaramond(
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('''Sovg'a va ezgu tilaklar

Alloh sizdan rozi bo'lsin.

Sizning tashrifingiz, samimiy duolaringiz va ezgu tilaklaringiz biz uchun eng qimmatli hadyadir.

Agar bizni quvontirish va to'y sovg'asi ulashishni istasangiz, quyidagi karta raqamidan foydalanishingiz mumkin.
''', style: GoogleFonts.poppins(height: 1.7)),
      
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
                                style: GoogleFonts.poppins(
                                  fontSize: 11,
                                  letterSpacing: 2,
                                ),
                              ),
      
                              const SizedBox(height: 50),
      
                              Text(
                                "9860 0000 0000 0000",
                                style: GoogleFonts.cormorantGaramond(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
      
                              const SizedBox(height: 38),
      
                              const Text("Ali MEhrojov"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
      
                  const SizedBox(height: 60),
      
                Text(
        "Sizni baxtli kunimizda\nintiqlik bilan kutamiz.",
        textAlign: TextAlign.center,
        style: GoogleFonts.playfairDisplay(
          fontSize: 24,
          height: 1.8,
          color: AppColors.textDark,
        ),
      ),
      
      const SizedBox(height: 80),
      
      
      
      
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
      width: 40,
      height: 1,
      color: Colors.black26,
          ),
          const SizedBox(width: 10),
          Text(
      "by avazstudio",
      style: GoogleFonts.poppins(
        fontSize: 11,
        color: Colors.black38,
      ),
          ),
          const SizedBox(width: 10),
          Container(
      width: 40,
      height: 1,
      color: Colors.black26,
          ),
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
          style: GoogleFonts.cormorantGaramond(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 6),
        Text(label, style: GoogleFonts.poppins(fontSize: 11)),
      ],
    ),
  );
}
