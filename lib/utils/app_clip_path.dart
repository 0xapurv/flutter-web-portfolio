import 'package:flutter_web/widgets.dart';

class AppClipPath extends CustomClipper<Path> {
  static final CLIP_BOTTOM = 1, CLICP_TOP = 2;
  final int _clipState;

  AppClipPath(this._clipState);

  @override
  Path getClip(Size size) {
    Path path = Path();

    final divHeight = 1.2;
    final divWidht = 2;
    if (_clipState == CLIP_BOTTOM) {
      path.lineTo(0, size.height / divHeight);
      path.quadraticBezierTo(size.width / divWidht, size.height, size.width,
          size.height / divHeight);
      path.lineTo(size.width, 0);
      path.close();
    } else {
      path.lineTo(0, size.height - size.height / divHeight);
      path.quadraticBezierTo(size.width - size.width / divWidht, 0, size.width,
          size.height - size.height / divHeight);
      path.lineTo(size.width, size.height);
      path.lineTo(0, size.height);
      path.close();
    }

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;

  bool _isLargeScreen(Size size) {
    return size.width > 800;
  }
}
