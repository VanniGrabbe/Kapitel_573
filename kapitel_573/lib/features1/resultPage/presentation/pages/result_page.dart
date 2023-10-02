import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String? estimatedAge;

  const ResultPage({super.key, this.estimatedAge});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ergebnis'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(estimatedAge!,
            style: const TextStyle(fontSize: 20),)
          ],
        ),
      ),
    );
  }
}