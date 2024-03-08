import 'package:flutter/material.dart';
import 'package:mir_mobile/config/router/app_router.dart';
import 'package:mir_mobile/config/themes/student_theme.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(
      routerConfig: appRouter,
      title: 'Mironline', 
      theme: AppTheme().theme(),
      
      );

  }
}
