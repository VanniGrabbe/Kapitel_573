
import 'package:flutter/material.dart';
import 'package:kapitel_573/core/data/remote_data_source.dart';
import 'package:kapitel_573/core/presentation/styles/color_styles.dart';
import 'package:kapitel_573/core/presentation/widgets/user_textfield.dart';

class InputUserPage extends StatefulWidget {
  const InputUserPage({super.key});

  @override
  State<InputUserPage> createState() => _InputUserPageState();
}

class _InputUserPageState extends State<InputUserPage> {
  TextEditingController usernameController = TextEditingController();
  int age = 0;
  String? name;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title: const Text('Schätzen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          16.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            UserTextfield(
              controller: usernameController,
              labelText: 'Bitte gebe Deinen Namen',
            ),
            const SizedBox(
              height: 30,
            ),
            FutureBuilder(
              future: getEstimatedAge(usernameController.text),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: kColorButton),
                      onPressed: () {
                        
                        setState(() {
                          var estimatedAge = snapshot.data;

                          Navigator.of(context).pushNamed('/result_page',
                              arguments: {'age': estimatedAge});
                        });
                      },
                      child: const Text('Ergebnis anzeigen'));
                } else {
                  return const CircularProgressIndicator();
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
