import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants/colors.dart';
import '../constants/size.dart';
import '../constants/sns_links.dart';
import 'custom_text_field.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  void _open(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) launchUrl(uri);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          const Text(
            "Entre em contato",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 50),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700, maxHeight: 100),
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth >= kMinDesktopWidth) {
                  return Row(
                    children: [
                      Flexible(child: CustomTextField(hintText: "Seu nome")),
                      const SizedBox(width: 15),
                      Flexible(child: CustomTextField(hintText: "Seu email")),
                    ],
                  );
                }
                return Column(
                  children: [
                    Flexible(child: CustomTextField(hintText: "Seu nome")),
                    const SizedBox(height: 15),
                    Flexible(child: CustomTextField(hintText: "Seu email")),
                  ],
                );
              },
            ),
          ),
          const SizedBox(height: 15),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: CustomTextField(hintText: "Sua mensagem", maxLines: 6),
          ),
          const SizedBox(height: 20),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Enviar mensagem"),
              ),
            ),
          ),
          const SizedBox(height: 30),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 300),
            child: const Divider(),
          ),
          const SizedBox(height: 15),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () => _open(SnsLinks.github),
                child: Image.asset("assets/github.png", width: 28),
              ),
              InkWell(
                onTap: () => _open(SnsLinks.linkedIn),
                child: Image.asset("assets/linkedin.png", width: 28),
              ),
              InkWell(
                onTap: () => _open(SnsLinks.instagram),
                child: Image.asset("assets/instagram.png", width: 28),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
