import 'package:flutter/material.dart';
import 'package:kapitel_573/core/presentation/styles/color_styles.dart';

class PrimaryButton extends StatefulWidget {
  final String text;
  final Function()? onPressed;
  
  const PrimaryButton({super.key, required this.text, required this.onPressed});

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState(text: text);
}

class _PrimaryButtonState extends State<PrimaryButton> {
  String text;

  _PrimaryButtonState({required this.text});

  @override
  Widget build(BuildContext context) {
    return  Material(
      color: kColorButton,
      
      child: InkWell(
        onTap: () => widget.onPressed,
        child: Text(widget.text),
       
        
        
       
    
      ),
    );
  }
}