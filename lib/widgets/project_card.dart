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
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: CustomColor.bgLight2,
        border: Border.all(
          color: CustomColor.accentPurple.withValues(alpha: 0.2),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Image
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(14)),
            child: Image.asset(
              project.image,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => Container(
                height: 150,
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
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 14, 14, 0),
            child: Text(
              project.title,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: CustomColor.whitePrimary,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 6, 14, 10),
            child: Text(
              project.subtitle,
              style: const TextStyle(
                fontSize: 12,
                color: CustomColor.whiteSecondary,
                height: 1.5,
              ),
            ),
          ),
          // Skills chips
          if (project.skills.isNotEmpty)
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 0, 14, 12),
              child: Wrap(
                spacing: 6,
                runSpacing: 6,
                children: project.skills.map((skill) => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: CustomColor.bgLight1,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: CustomColor.accentPurple.withValues(alpha: 0.5),
                      width: 0.8,
                    ),
                  ),
                  child: Text(
                    skill,
                    style: const TextStyle(
                      fontSize: 10,
                      color: CustomColor.accentBlue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )).toList(),
              ),
            ),
          // Footer
          Container(
            decoration: BoxDecoration(
              color: CustomColor.bgLight1,
              borderRadius: const BorderRadius.vertical(bottom: Radius.circular(14)),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            child: Row(
              children: [
                const Text(
                  "Ver projeto",
                  style: TextStyle(
                    color: CustomColor.yellowSecondary,
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                if (project.webLink != null || project.previewUrl != null)
                  InkWell(
                    onTap: () => _openWeb(context),
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: CustomColor.yellowSecondary.withValues(alpha: 0.15),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.open_in_new_rounded,
                        size: 16,
                        color: CustomColor.yellowSecondary,
                      ),
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
