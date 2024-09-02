import 'package:flutter/material.dart';
import 'constants.dart';
import 'screens/onboarding/onboarding_scrreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Flutter Way - Foodly UI Kit',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
      //   elevatedButtonTheme: ElevatedButtonThemeData(
      //     style: ElevatedButton.styleFrom(
      //       backgroundColor: primaryColor,
      //       foregroundColor: Colors.white,
      //       minimumSize: const Size(double.infinity, 40),
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(8),
      //       ),
      //     ),
      //   ),
      //   textTheme: const TextTheme(
      //     bodyMedium: TextStyle(color: Color(0xFF868686)),
      //     bodySmall: TextStyle(color: Color(0xFF868686)),
      //   ),
      //   inputDecorationTheme: const InputDecorationTheme(
      //     contentPadding: EdgeInsets.all(16),
      //     hintStyle: TextStyle(color: Color(0xFF868686)),
      //   ),
      // ),
      home: const OnboardingScreen(),
    );
  }
}
