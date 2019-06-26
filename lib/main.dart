import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
import 'package:flutter_web/painting.dart';
import 'package:flutter_web/rendering.dart';
import 'package:flutter_web/widgets.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/widgets/body.dart';
import 'package:portfolio/widgets/footer.dart';
import 'package:portfolio/widgets/header.dart';
import 'package:portfolio/widgets/responsive_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Abdelouahed Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              backgroundColor: AppColors.redAccent,
            )
          : null,
      drawer: ResponsiveWidget.isSmallScreen(context) ? _drawer() : null,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.sms),
        backgroundColor: AppColors.redAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      body: ListView(
        children: <Widget>[
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Header(), Body(), Footer()]),
        ],
      ),
    );
  }

  Widget _drawer() {
    return Drawer(
      child: Container(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.all(20),
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: <Color>[AppColors.redAccent, Colors.red[400]],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight),
                    shape: BoxShape.circle),
                child: Text('AM',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                "HOME",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                    color: Colors.black87),
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                "PROJECTS",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                    color: Colors.black87),
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                "CONTACT",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                    color: Colors.black87),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
