import 'package:flutter/material.dart';

import 'chat.dart';
import 'constants.dart';
import 'custom_button.dart';
import 'custom_textfield.dart';

class SignUp extends StatelessWidget {
  static const String id = 'signup';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Sign up',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: kBackgroundColor,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15.0,
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                CustomTextField(
                  text: 'Email',
                ),
                CustomTextField(
                  text: 'Username',
                ),
                CustomTextField(
                  text: 'Password',
                  obscureText: true,
                ),
                CustomButton(
                  color: kPrimaryColor,
                  text: 'Sign up',
                  onPressed: () {
                    // handle log in
                    Navigator.pushNamed(context, Chat.id);
                  },
                ),
              ]),
        ),
      ),
    );
  }
}
