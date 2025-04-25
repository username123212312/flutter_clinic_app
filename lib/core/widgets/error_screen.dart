import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Page not Found',
          style: TextStyle(fontSize: 40, color: Colors.red),
        ),
      ),
    );
  }
}
