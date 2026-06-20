import 'package:flutter/material.dart';
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
            children: [
              const Text(
                "Olá,\nSou Gabriel Pereira\nDesenvolvedor Mobile",
                style: TextStyle(
                  fontSize: 30,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: 250.0,
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
          Image.asset(
            "assets/avatar.png",
            width: screenWidth / 2,
          ),
        ],
      ),
    );
  }
}
