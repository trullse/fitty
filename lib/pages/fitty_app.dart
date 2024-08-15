import 'package:flutter/material.dart';

import '../pages/home_page.dart';

class FittyApp extends StatelessWidget {
  const FittyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitty',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Fitty'),
    );
  }
}
