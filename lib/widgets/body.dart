import 'package:flutter_web/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/widgets/project.dart';
import 'package:portfolio/widgets/projects.dart';
import '../data/projects.dart' as dataprojects;

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: dataprojects.projects
          .map((project) => ProjectItem(
                project: project,
              ))
          .toList(),
    );
  }
}
