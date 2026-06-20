import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ShaderMask(
        shaderCallback: (bounds) => const LinearGradient(
          colors: [CustomColor.yellowPrimary, CustomColor.accentPurple],
        ).createShader(bounds),
        child: Text(
          "GP",
          style: GoogleFonts.poppins(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
