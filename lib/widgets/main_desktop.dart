import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(minHeight: 350.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Olá, sou",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: CustomColor.whiteSecondary,
                  letterSpacing: 1.2,
                ),
              ),
              ShaderMask(
                shaderCallback: (bounds) => const LinearGradient(
                  colors: [CustomColor.yellowPrimary, CustomColor.accentPurple],
                ).createShader(bounds),
                child: Text(
                  "Gabriel Pereira",
                  style: GoogleFonts.poppins(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    height: 1.2,
                  ),
                ),
              ),
              Text(
                "Desenvolvedor Mobile",
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: CustomColor.whitePrimary,
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "Flutter · Kotlin · Android",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: CustomColor.accentBlue,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(height: 28),
              SizedBox(
                width: 220.0,
                child: ElevatedButton.icon(
                  onPressed: () async {
                    final uri = Uri.parse(
                      'https://wa.me/5519999220499?text=Olá%20Gabriel%2C%20vi%20seu%20portfólio%20e%20gostaria%20de%20conversar!',
                    );
                    if (await canLaunchUrl(uri)) launchUrl(uri);
                  },
                  icon: const Icon(Icons.whatsapp, size: 20),
                  label: const Text("Entre em contato"),
                ),
              ),
            ],
          ),
          Image.asset(
            "assets/avatar.png",
            width: screenWidth / 2.4,
          ),
        ],
      ),
    );
  }
}
