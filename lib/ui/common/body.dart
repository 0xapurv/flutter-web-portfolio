import 'package:flutter_web/material.dart';
import 'package:portfolio/ui/common/project_item.dart';
import 'package:portfolio/data/projects.dart' as dataprojects;

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: dataprojects.projects
          .map((project) => ProjectItem(
              project: project, index: dataprojects.projects.indexOf(project)))
          .toList(),
    );
  }
}
