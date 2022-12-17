import 'package:flutter/material.dart';
import 'package:lilsikh/screens/splash_screen.dart';

void main() {
  runApp(const LilSikh());
}

class LilSikh extends StatelessWidget {
  const LilSikh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
