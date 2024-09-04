import 'package:flutter/material.dart';
import 'package:foodly_ui/screens/auth/sign_in_screen.dart';
import 'package:foodly_ui/screens/auth/sign_up_screen.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'The Flutter Way - Foodly UI Kit',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF22A45D)),
      //   elevatedButtonTheme: ElevatedButtonThemeData(
      //     style: ElevatedButton.styleFrom(
      //       backgroundColor: Color(0xFF22A45D),
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
      home: const SignUpScreen(),
    );
  }
}
