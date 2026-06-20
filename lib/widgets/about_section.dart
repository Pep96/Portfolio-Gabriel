import 'package:flutter/material.dart';
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
            constraints: const BoxConstraints(maxWidth: 560),
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
        const Text(
          "Sobre mim",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: CustomColor.yellowSecondary,
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          "Sou Gabriel Pereira, desenvolvedor mobile com foco em Flutter e Android nativo. "
          "Apaixonado por criar experiências fluidas e bem projetadas para dispositivos móveis, "
          "com atenção especial à performance e à qualidade do código.",
          style: TextStyle(
            fontSize: 15,
            height: 1.8,
            color: CustomColor.whiteSecondary,
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          "Tenho experiência com Flutter, Dart, Kotlin, Jetpack Compose e Android nativo, "
          "desenvolvendo aplicativos do zero com arquiteturas modernas como BLoC e Riverpod. "
          "Gosto de resolver problemas reais e transformar ideias em produtos funcionais.",
          style: TextStyle(
            fontSize: 15,
            height: 1.8,
            color: CustomColor.whiteSecondary,
          ),
        ),
        const SizedBox(height: 24),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            _chip(Icons.place_rounded, "Amparo, SP"),
            _chip(Icons.work_rounded, "Disponível para projetos"),
            _chip(Icons.school_rounded, "Dev Mobile"),
          ],
        ),
      ],
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
            style: const TextStyle(
              fontSize: 13,
              color: CustomColor.whiteSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
