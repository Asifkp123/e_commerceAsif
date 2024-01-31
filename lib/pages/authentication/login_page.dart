  import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
          child: ShieldWidget(),
        ),
    );
  }
}

class ShieldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 300.0,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(
          color: Colors.black,
          width: 2.0,
        ),
      ),
      child: ClipPath(
        clipper: ShieldClipper(),
        child: Container(
          color: Colors.blue,
        ),
      ),
    );
  }
}

class ShieldClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width / 2, 0.0); // Top center
    path.lineTo(size.width, size.height / 2); // Right middle
    path.lineTo(size.width / 2, size.height); // Bottom center
    path.lineTo(0.0, size.height / 2); // Left middle
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}