import 'package:flutter/material.dart';

class DestinationScreen extends StatelessWidget {
  final String tag;
  final  icon;

  const DestinationScreen({required this.tag, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Destination Screen'),
      ),
      body: Center(
        child: Hero(
          tag: tag,
          child: Image.asset(icon)
        ),
      ),
    );
  }
}
