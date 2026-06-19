import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../utils/project_utils.dart';
import 'project_preview_dialog.dart';

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({super.key, required this.project});
  final ProjectUtils project;

  void _openWeb(BuildContext context) {
    final url = project.previewUrl ?? project.webLink;
    if (url == null) return;
    ProjectPreviewDialog.show(context, project.title, url);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 290,
      width: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            project.image,
            height: 140,
            width: 260,
            fit: BoxFit.cover,
            errorBuilder: (_, __, ___) => Container(
              height: 140,
              width: 260,
              color: CustomColor.bgLight1,
              child: Center(
                child: Icon(
                  project.icon ?? Icons.flutter_dash,
                  size: 64,
                  color: project.iconColor ?? CustomColor.yellowSecondary,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              project.title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: CustomColor.whitePrimary,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              project.subtitle,
              style: const TextStyle(fontSize: 12, color: CustomColor.whiteSecondary),
            ),
          ),
          const Spacer(),
          Container(
            color: CustomColor.bgLight1,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                const Text(
                  "Disponível em:",
                  style: TextStyle(color: CustomColor.yellowSecondary, fontSize: 10),
                ),
                const Spacer(),
                if (project.webLink != null || project.previewUrl != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: InkWell(
                      onTap: () => _openWeb(context),
                      child: Image.asset("assets/web_icon.png", width: 17),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
