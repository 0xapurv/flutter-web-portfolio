import 'package:flutter_web/material.dart';
import 'package:portfolio/ui/common/project_item.dart';
import 'package:portfolio/data/projects.dart' as dataprojects;
import 'package:portfolio/utils/colors.dart';

class ProjectList extends StatelessWidget {
  static const String id = "projects";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColors.redAccent,
          title: Text('Projects'),
        ),
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
