import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';
import 'package:portfolio/ui/screens/home.dart';
import 'package:portfolio/ui/screens/project_list.dart';
import 'package:portfolio/ui/screens/project_preview.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Abdelouahed Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      routes: {
        ProjectList.id: (context) => ProjectList(),
        ProjectPreview.id: (context) => ProjectPreview(),
      },
      home: Home(),
    );
  }
}
