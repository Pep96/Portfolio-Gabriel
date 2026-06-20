import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/colors.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth >= 900;

    return Container(
      width: screenWidth,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 60),
      color: CustomColor.bgLight1,
      child: isDesktop ? _buildDesktop() : _buildMobile(),
    );
  }

  Widget _buildDesktop() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _avatar(),
        const SizedBox(width: 60),
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 580),
            child: _content(),
          ),
        ),
      ],
    );
  }

  Widget _buildMobile() {
    return Column(
      children: [
        _avatar(),
        const SizedBox(height: 32),
        _content(),
      ],
    );
  }

  Widget _avatar() {
    return Container(
      width: 180,
      height: 180,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: CustomColor.yellowSecondary, width: 3),
        boxShadow: [
          BoxShadow(
            color: CustomColor.yellowSecondary.withValues(alpha: 0.3),
            blurRadius: 24,
            spreadRadius: 4,
          ),
        ],
      ),
      child: ClipOval(
        child: Image.asset(
          'assets/profile.jpg',
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
        ),
      ),
    );
  }

  Widget _content() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShaderMask(
          shaderCallback: (bounds) => const LinearGradient(
            colors: [CustomColor.yellowPrimary, CustomColor.accentPurple],
          ).createShader(bounds),
          child: Text(
            "Sobre mim",
            style: GoogleFonts.poppins(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          "Transformo ideias em aplicativos que as pessoas realmente querem usar. "
          "Sou desenvolvedor mobile especializado em Flutter e Android nativo, "
          "entregando apps com interface polida, código limpo e performance que o usuário sente.",
          style: GoogleFonts.poppins(
            fontSize: 15,
            height: 1.9,
            color: CustomColor.whiteSecondary,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          "Se você tem uma ideia de app e precisa de alguém que cuide do projeto do início "
          "ao fim — arquitetura, design, publicação — eu sou essa pessoa. "
          "Trabalho com Flutter, Kotlin e Jetpack Compose, e entrego o que foi combinado, "
          "no prazo, sem enrolação.",
          style: GoogleFonts.poppins(
            fontSize: 15,
            height: 1.9,
            color: CustomColor.whiteSecondary,
          ),
        ),
        const SizedBox(height: 28),
        Row(
          children: [
            _statCard("3+", "Apps\nEntregues"),
            const SizedBox(width: 16),
            _statCard("2+", "Anos de\nExperiência"),
            const SizedBox(width: 16),
            _statCard("100%", "Foco em\nMobile"),
          ],
        ),
        const SizedBox(height: 24),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            _chip(Icons.place_rounded, "Amparo, SP"),
            _chip(Icons.check_circle_rounded, "Disponível agora"),
            _chip(Icons.devices_rounded, "Flutter & Android"),
          ],
        ),
      ],
    );
  }

  Widget _statCard(String value, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      decoration: BoxDecoration(
        color: CustomColor.bgLight2,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: CustomColor.yellowSecondary.withValues(alpha: 0.3),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          ShaderMask(
            shaderCallback: (bounds) => const LinearGradient(
              colors: [CustomColor.yellowPrimary, CustomColor.accentPurple],
            ).createShader(bounds),
            child: Text(
              value,
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Text(
            label,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 11,
              color: CustomColor.whiteSecondary,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }

  Widget _chip(IconData icon, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: CustomColor.bgLight2,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: CustomColor.yellowSecondary),
          const SizedBox(width: 6),
          Text(
            label,
            style: GoogleFonts.poppins(
              fontSize: 13,
              color: CustomColor.whiteSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
