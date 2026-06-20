import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      height: screenHeight,
      constraints: const BoxConstraints(minHeight: 560.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                CustomColor.scaffoldBg.withValues(alpha: 0.6),
                CustomColor.scaffoldBg.withValues(alpha: 0.6),
              ]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset("assets/avatar.png", width: screenWidth),
          ),
          const SizedBox(height: 30),
          const Text(
            "Olá,\nSou Gabriel Pereira\nDesenvolvedor Mobile",
            style: TextStyle(
              fontSize: 24,
              height: 1.5,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: 190.0,
            child: ElevatedButton(
              onPressed: () async {
                final uri = Uri.parse(
                  'https://wa.me/5519999220499?text=Olá%20Gabriel%2C%20vi%20seu%20portfólio%20e%20gostaria%20de%20conversar!',
                );
                if (await canLaunchUrl(uri)) launchUrl(uri);
              },
              child: const Text("Entre em contato"),
            ),
          ),
        ],
      ),
    );
  }
}
