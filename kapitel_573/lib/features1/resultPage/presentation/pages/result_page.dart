import 'package:flutter/material.dart';
import 'package:kapitel_573/core/presentation/styles/color_styles.dart';

class ResultPage extends StatefulWidget {
  final String? estimatedAge;

  const ResultPage({super.key, this.estimatedAge});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  final TextEditingController usernameController = TextEditingController();
  String? name;
  int? age;

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title: const Text('Ergebnis'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              arguments['age'],
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: kColorButton),
                    onPressed: () {
                      usernameController.clear();
                      name = null;
                      Navigator.pop(context);
                    },
                    child: const Text('Neustart')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
