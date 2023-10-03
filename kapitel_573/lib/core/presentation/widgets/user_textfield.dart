import 'package:flutter/material.dart';
import 'package:kapitel_573/core/presentation/styles/color_styles.dart';
import 'package:kapitel_573/core/presentation/styles/text_style.dart';

class UserTextfield extends StatefulWidget {
  final String labelText;
  final TextEditingController controller;
  const UserTextfield(
      {super.key, required this.labelText, required this.controller});

  @override
  State<UserTextfield> createState() => _UserTextfieldState();
}

class _UserTextfieldState extends State<UserTextfield> {
  @override
  Widget build(BuildContext context) {
    return const TextField(
      cursorColor: kColorButton,
      decoration: InputDecoration(
        enabledBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: kColorButton)),
        labelText: 'Bitte gib Deinen Namen ein',
        labelStyle: kInputText,
      ),
    );
  }
}
