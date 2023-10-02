import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onboarding',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const OnboardingPage(),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Onboarding'),
      ),
      body:  Padding( 
        padding: EdgeInsets.only(right: 40, left: 40),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              const Text(
                'Willkommen bei API', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30,
              ),
              const Text('In dieser App kannst du anhand eines Namens dein Alter ausgeben lassen. Probiere es gleich aus',
              softWrap: true,
              ),
              const SizedBox(height: 40,
             
              ),
              ElevatedButton(
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
