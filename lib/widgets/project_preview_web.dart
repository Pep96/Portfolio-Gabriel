import 'package:flutter/material.dart';
import 'dart:html' as html;
import '../constants/colors.dart';

class ProjectPreviewDialog {
  static void show(BuildContext context, String title, String previewUrl) {
    html.window.open(previewUrl, '_blank');
  }
}
