import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({@required this.text, this.obscureText = false});

  final String text;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10.5,
        vertical: 5.0,
      ),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: text,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
    );
  }
}
