import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:kapitel_573/core/presentation/widgets/user_textfield.dart';

class InputUserPage extends StatefulWidget {
  const InputUserPage({super.key});

  @override
  State<InputUserPage> createState() => _InputUserPageState();
}

class _InputUserPageState extends State<InputUserPage> {
  TextEditingController usernameController = TextEditingController();
  String name = '';
  int age = 0;

  Future<void> getEstimatedAge(String text) async {
    final name = usernameController.text;
    if (name.isNotEmpty) {
      final apiUrl = Uri.http('//api.agify.io');
      
      var http;
      final response = await http.post(apiUrl);

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        var estimatedAge = data['age'] as int;
        estimatedAge = 'Geschätztes Alter: $estimatedAge' as int;
         setState(() {
          Navigator.of(context).pushNamed(
            '/result_page',
          );
      });
        }
       
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
        'Bitte gebe einen Namen ein',
      )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              title: '',
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              
                onPressed:(){
                  getEstimatedAge(usernameController.text);

                } , child: const Text('Schätzen'))
          ],
        ),
      ),
    );
  }
}
