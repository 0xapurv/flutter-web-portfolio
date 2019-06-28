import 'package:flutter_web/material.dart';
import 'package:portfolio/widgets/project.dart';
import '../data/projects.dart' as dataprojects;

class Projects extends StatelessWidget {
  static final String id = "projects";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Projects',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
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
