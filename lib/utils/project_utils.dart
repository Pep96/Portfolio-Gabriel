import 'package:flutter/material.dart';

class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final List<String> skills;
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
    this.skills = const [],
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
    subtitle: 'App de tarefas com persistência local, modo escuro e filtros.',
    skills: ['Flutter', 'Dart', 'BLoC', 'Hive'],
    webLink: 'https://pep96.github.io/todo-app/',
    previewUrl: 'https://pep96.github.io/todo-app/',
    icon: Icons.check_circle_rounded,
    iconColor: Color(0xFF4CAF50),
  ),
  ProjectUtils(
    image: 'assets/projects/weather.png',
    title: 'Weather App',
    subtitle: 'Clima em tempo real com geolocalização e gradiente dinâmico.',
    skills: ['Flutter', 'Dart', 'BLoC', 'REST API'],
    webLink: 'https://pep96.github.io/weather-app/',
    previewUrl: 'https://pep96.github.io/weather-app/',
    icon: Icons.wb_sunny_rounded,
    iconColor: Color(0xFF42A5F5),
  ),
  ProjectUtils(
    image: 'assets/projects/finance.png',
    title: 'Finance Tracker',
    subtitle: 'Finanças pessoais com gráficos, categorias e autenticação.',
    skills: ['Flutter', 'Dart', 'Riverpod', 'fl_chart'],
    webLink: 'https://pep96.github.io/finance-tracker/',
    previewUrl: 'https://pep96.github.io/finance-tracker/',
    icon: Icons.account_balance_wallet_rounded,
    iconColor: Color(0xFFFFB300),
  ),
];

List<ProjectUtils> workProjectUtils = [];
