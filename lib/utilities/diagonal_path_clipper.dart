import 'package:flutter/rendering.dart';

class DiagonalPathClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(size.width, 0.0)
      ..lineTo(size.width, size.height)
      ..lineTo(0.0, size.height - 112.0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
