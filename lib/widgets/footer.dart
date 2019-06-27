import 'package:flutter_web/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/widgets/contact.dart';
import 'package:portfolio/widgets/responsive_widget.dart';
import 'dart:html' as html;

class Footer extends StatelessWidget {
  final double iconSize = 35;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: _largeScreen(context),
      smallScreen: _smallScreen(context),
    );
  }

  Widget _largeScreen(BuildContext context) {
    return Container(
      height: 500,
      child: Stack(children: [
        Image.asset(
          'images/cover.jpg',
          alignment: Alignment.bottomLeft,
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 5, vertical: 30),
          color: AppColors.blackTransparent,
          child: Column(
            children: <Widget>[
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('images/me.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        _socialIcons(),
                      ],
                    ),
                    Expanded(
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(width: 600, child: Contact()))),
                  ],
                ),
              ),
              _copyRight()
            ],
          ),
        ),
      ]),
    );
  }

  Widget _smallScreen(BuildContext context) {
    return Container(
        height: 600,
        child: Stack(children: [
          Image.asset(
            'images/cover.jpg',
            alignment: Alignment.bottomLeft,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 10,
                vertical: 30),
            color: AppColors.blackTransparent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('images/me.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      _socialIcons(),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Container(width: 600, child: Contact()))),
                    ],
                  ),
                ),
                _copyRight()
              ],
            ),
          ),
        ]));
  }

  Widget _socialIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        InkWell(
          onTap: () =>
              html.window.open('https://github.com/GeekAbdelouahed', 'Github'),
          child: Image.asset(
            'images/github.png',
            height: iconSize,
            width: iconSize,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        InkWell(
          onTap: () => html.window.open(
              'https://www.linkedin.com/in/abdelouahed-medjoudja/', 'Linkedin'),
          child: Image.asset(
            'images/linkedin.png',
            height: iconSize,
            width: iconSize,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        InkWell(
          onTap: () => html.window.open(
              'https://www.facebook.com/AbdelouahedMedjoudja', 'Facebook'),
          child: Image.asset(
            'images/facebook.png',
            height: iconSize,
            width: iconSize,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        InkWell(
          onTap: () =>
              html.window.open('https://twitter.com/MedAbdelouahed', 'Twitter'),
          child: Image.asset(
            'images/twitter.png',
            height: iconSize,
            width: iconSize,
          ),
        ),
      ],
    );
  }

  Widget _copyRight() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Icon(
          Icons.copyright,
          size: 20,
          color: Colors.white,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          'Abdelouahed Medjoudja . 2019',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: () =>
              html.window.open('https://github.com/GeekAbdelouahed', 'Github'),
          child: Text(
            'Github',
            style: TextStyle(
                decoration: TextDecoration.underline, color: Colors.white),
          ),
        )
      ],
    );
  }
}
