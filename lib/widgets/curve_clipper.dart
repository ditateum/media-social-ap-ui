import 'package:flutter/material.dart';

class CurveClipper extends CustomClipper<Path> {
  /*
    width widget Image yang di ClipPath = 430.0
    width height Image yang di ClipPath = 372.8

  */
  @override
  Path getClip(Size size) {
    // Ini membuat objek Path yang merupakan sekumpulan perintah untuk menggambar garis, kurva, dan bentuk lainnya di Flutter.
    Path path = Path();
    // 4/5 * size.height = 80% dari height Image
    path.lineTo(0, 4 * size.height / 5);
    // untuk menentukan koordinat 2 dimensi
    Offset curvePoint1 = Offset(size.width / 4, size.height);
    Offset centerPoint1 = Offset(size.width / 2, 4 * size.height / 5);
    path.quadraticBezierTo(
      curvePoint1.dx,
      curvePoint1.dy,
      centerPoint1.dx,
      centerPoint1.dy,
    );
    Offset curvePoint2 = Offset(3 * size.width / 4, 3 * size.height / 5);
    Offset endPoint = Offset(size.width, 4 * size.height / 5);
    path.quadraticBezierTo(
      curvePoint2.dx,
      curvePoint2.dy,
      endPoint.dx,
      endPoint.dy,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  // *menentukan apakah perlu memotong ulang widget ketika klipper berubah
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
