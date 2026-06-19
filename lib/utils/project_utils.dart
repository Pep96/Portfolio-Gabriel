import 'package:flutter/material.dart';

class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;
  final String? previewUrl;
  final IconData? icon;
  final Color? iconColor;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.iosLink,
    this.webLink,
    this.previewUrl,
    this.icon,
    this.iconColor,
  });
}

List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/todo.png',
    title: 'Todo App',
    subtitle: 'App de tarefas com persistência local, modo escuro e interface moderna.',
    webLink: 'https://github.com/Pep96',
    previewUrl: 'https://pep96.github.io/Portfolio-Gabriel/apps/todo_app/index.html',
    icon: Icons.check_circle_rounded,
    iconColor: Color(0xFF4CAF50),
  ),
  ProjectUtils(
    image: 'assets/projects/weather.png',
    title: 'Weather App',
    subtitle: 'Previsão do tempo em tempo real com geolocalização e animações.',
    webLink: 'https://github.com/Pep96',
    previewUrl: 'https://pep96.github.io/Portfolio-Gabriel/apps/weather_app/index.html',
    icon: Icons.wb_sunny_rounded,
    iconColor: Color(0xFF42A5F5),
  ),
  ProjectUtils(
    image: 'assets/projects/finance.png',
    title: 'Finance Tracker',
    subtitle: 'Controle financeiro pessoal com gráficos, categorias e autenticação.',
    webLink: 'https://github.com/Pep96',
    previewUrl: 'https://pep96.github.io/Portfolio-Gabriel/apps/finance_tracker/index.html',
    icon: Icons.account_balance_wallet_rounded,
    iconColor: Color(0xFFFFB300),
  ),
];

List<ProjectUtils> workProjectUtils = [];
