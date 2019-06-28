import 'package:flutter_web/material.dart';
import 'package:portfolio/utils/app_clip_path.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/widgets/projects.dart';
import 'package:portfolio/widgets/responsive_widget.dart';

class Header extends StatelessWidget {
  final String _title = 'Mobile and Web Developer.';
  final String _description =
      'you have a vision i help build it with all love 😍.';
  final String _need_project = 'I NEED TO BUILD PROJECT';

  const Header();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ClipPath(
        clipper: AppClipPath(AppClipPath.CLIP_BOTTOM),
        child: ResponsiveWidget(
          largeScreen: _largeScreen(context),
          smallScreen: _smallScreen(context),
        ),
      ),
    );
  }

  Future<void> _showDialog(
      BuildContext context, String title, String message) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: Text(message),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _onClickNeedProject(BuildContext context) {
    _showDialog(context, _need_project, 'Comming Soon');
  }

  Widget _largeScreen(BuildContext context) {
    return Container(
      height: 600,
      child: Stack(children: <Widget>[
        Image.asset(
          'images/cover.jpg',
          alignment: Alignment.topLeft,
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          color: AppColors.blackTransparent,
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 5, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: <Color>[
                              AppColors.redAccent,
                              Colors.red[400]
                            ],
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      OutlineButton(
                        onPressed: () {},
                        splashColor: AppColors.redAccent,
                        highlightedBorderColor: AppColors.redAccent,
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 2,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                        child: Text(
                          "HOME",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      OutlineButton(
                        onPressed: () =>
                            Navigator.of(context).pushNamed(Projects.id),
                        splashColor: AppColors.redAccent,
                        highlightedBorderColor: AppColors.redAccent,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 2,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Text(
                          "PROJECTS",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      OutlineButton(
                        onPressed: () =>
                            Navigator.of(context).pushNamed(Projects.id),
                        splashColor: AppColors.redAccent,
                        highlightedBorderColor: AppColors.redAccent,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 2,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Text(
                          "CONTACT",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                _title,
                style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                _description,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey[300],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.center,
                child: RaisedButton(
                    onPressed: () => _onClickNeedProject(context),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    color: AppColors.redAccent,
                    child: Text(
                      _need_project,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                        letterSpacing: 1.1,
                      ),
                    )),
              )
            ],
          ),
        ),
      ]),
    );
  }

  Widget _smallScreen(BuildContext context) {
    return Container(
      height: 700,
      child: Stack(children: [
        Image.asset(
          'images/cover.jpg',
          alignment: Alignment.bottomLeft,
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          color: AppColors.blackTransparent,
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 10, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: <Color>[
                              AppColors.redAccent,
                              Colors.red[400]
                            ],
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
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                _title,
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                _description,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey[300],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.center,
                child: RaisedButton(
                  onPressed: () => _onClickNeedProject(context),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  color: AppColors.redAccent,
                  child: Text(
                    _need_project,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                      letterSpacing: 1.1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
