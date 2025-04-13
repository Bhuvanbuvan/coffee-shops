import 'package:coffee_shope/presentation/views/onbording/onbording.dart';
import 'package:coffee_shope/presentation/views/splash/splash.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const Splash());
  }
}
