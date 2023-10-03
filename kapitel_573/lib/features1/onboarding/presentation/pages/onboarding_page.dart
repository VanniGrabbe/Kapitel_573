import 'package:flutter/material.dart';
import 'package:kapitel_573/core/presentation/styles/color_styles.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OnboardingPage(),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title: const Text('Onboarding'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 40, left: 40),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Willkommen bei API',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'In dieser App kannst du anhand eines Namens dein Alter ausgeben lassen. Probiere es gleich aus',
                softWrap: true,
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: kColorButton),
                onPressed: () {
                  Navigator.of(context).pushNamed('/user_input_page');
                },
                child: const Text('Los geht`s'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
