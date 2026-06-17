import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:site_tst/widgets/music_button.dart';
import '../widgets/envelope_widget.dart';
import 'invitation_screen.dart';
import '../constants/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        forceMaterialTransparency: false,
        toolbarHeight: 80,
         backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
    elevation: 0,
    surfaceTintColor: Colors.transparent,
    shadowColor: Colors.transparent,
        
        leading: Padding(
          padding: EdgeInsets.only(left: 10, top: 10),
          child: MusicButton(),
        ),
      ),
      backgroundColor: AppColors.background,
      body: Center(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 450),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
              child: Column(
                children: [
                  Text(
                    "Baxt ila",
                    style: TextStyle(
                      fontFamily: "Cormorant",
                      fontSize: 28,
                      color: AppColors.primaryGold,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  const SizedBox(height: 24),

                  Text(
                    " Jamshid va Nozima",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Cormorant",
                      fontSize: 50,
                      color: AppColors.textDark,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(height: 12),

                  Text(
                    "nikoh to'yiga taklif etamiz",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.black54,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 50),

                  GestureDetector(
                    onTap: () async {
                      await _controller.forward();

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const InvitationScreen(),
                        ),
                      );
                    },
                    child: AnimatedBuilder(
                      animation: _controller,
                      builder: (context, child) {
                        return Transform.scale(
                          scale: 1 + (_controller.value * 0.05),
                          child: Container(
                            width: 320,
                            height: 220,
                            decoration: BoxDecoration(
                              color: const Color(0xFFEAE2D5),
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.08),
                                  blurRadius: 20,
                                  offset: const Offset(0, 10),
                                ),
                              ],
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  top: -80 * _controller.value,
                                  child: Container(
                                    width: 250,
                                    height: 110,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),

                                const CircleAvatar(
                                  radius: 28,
                                  backgroundColor: Color(0xFFD4AF37),
                                  child: Text(
                                    "A&M",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 40),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.favorite_border,
                        color: AppColors.primaryGold,
                        size: 16,
                      ),

                      const SizedBox(width: 10),

                      Text(
                        "Taklifnomani ochish uchun bosing",
                        style: TextStyle(
                          fontFamily: "EBGaramond",
                          color: AppColors.primaryGold,
                          fontSize: 18,
                        ),
                      ),

                      const SizedBox(width: 10),

                      Icon(
                        Icons.favorite_border,
                        color: AppColors.primaryGold,
                        size: 16,
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
