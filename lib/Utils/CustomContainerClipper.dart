import 'package:flutter/material.dart';

class SpeechBubbleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    double curveHeight = 30;
    double tailWidth = 30;
    double tailHeight = 20;

    path.moveTo(20, 0);
    path.quadraticBezierTo(0, 0, 0, 20); // Top-left curve
    path.lineTo(0, size.height - 20);
    path.quadraticBezierTo(
      0,
      size.height,
      20,
      size.height,
    ); // Bottom-left curve
    path.lineTo(size.width - tailWidth - 10, size.height); // Straight bottom
    path.quadraticBezierTo(
      size.width - tailWidth,
      size.height,
      size.width - tailWidth + 5,
      size.height - 10,
    ); // Start tail curve
    path.quadraticBezierTo(
      size.width,
      size.height / 2,
      size.width - tailWidth + 5,
      10,
    ); // Tail top curve
    path.quadraticBezierTo(
      size.width - tailWidth,
      0,
      size.width - tailWidth - 10,
      0,
    ); // Join back to top
    path.lineTo(20, 0); // Complete shape
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
