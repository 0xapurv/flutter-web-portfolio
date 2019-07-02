import 'package:flutter_web/material.dart';
import 'package:portfolio/widgets/project_item.dart';
import '../data/projects.dart' as dataprojects;

class ProjectList extends StatelessWidget {
  static const String id = "projects";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Column(
          children: dataprojects.projects
              .map((project) => ProjectItem(
                    project: project,
                    index: dataprojects.projects.indexOf(project),
                  ))
              .toList(),
        ),
      ],
    ));
  }
}
