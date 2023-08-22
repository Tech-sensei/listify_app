import 'package:flutter/material.dart';
import 'package:todo_app/onboarding_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LISTIFY App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF50C2C9),
          primary: Color(0xFF50C2C9),
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Color(0xFF50C2C9),
            fontWeight: FontWeight.w800,
            fontSize: 24,
          ),
          titleMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xff5B5B5B),
          ),
          titleSmall: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Color(0xff5B5B5B),
          ),
        ),
        useMaterial3: true,
      ),
      // home: const LoginScreen(),
      // home: const RegisterScreen(),
      home: const OnboardingScreen(),
    );
  }
}
