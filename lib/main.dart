import 'package:flutter/material.dart';
import 'package:mir_mobile/presentation/screens/intro/intro_screen.dart';
import 'package:mir_mobile/config/themes/student_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mironline', 
      theme: AppTheme().theme(),
      home: const Scaffold(
        body: IntroScreen(),
        )
      );
  }
}
