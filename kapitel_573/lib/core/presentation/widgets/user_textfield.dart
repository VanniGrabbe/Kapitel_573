import 'package:flutter/material.dart';
import 'package:kapitel_573/core/presentation/styles/text_style.dart';

class UserTextfield extends StatefulWidget {
  final String? title;
  final TextEditingController controller;
  const UserTextfield({super.key, required this.title, required this.controller});

  @override
  State<UserTextfield> createState() => _UserTextfieldState();
}

class _UserTextfieldState extends State<UserTextfield> {
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       TextField(
        controller: widget.controller,
        style: kInputText,

        
       )
      ],
    );
  }
}

