import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectPreviewDialog {
  static void show(BuildContext context, String title, String previewUrl) async {
    final uri = Uri.parse(previewUrl);
    if (await canLaunchUrl(uri)) launchUrl(uri);
  }
}
