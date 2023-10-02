import 'package:flutter/material.dart';
import 'package:kapitel_573/features1/inputUser/presentation/pages/input_user_page.dart';
import 'package:kapitel_573/features1/onboarding/presentation/pages/onboarding_page.dart';
import 'features1/resultPage/presentation/pages/result_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context) => const OnboardingPage(),
        '/user_input_page':(context) => const InputUserPage(),
        '/result_page':(context) => const ResultPage(),
      },
     
    );
  }
}
