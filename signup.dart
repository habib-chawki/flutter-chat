import 'package:flutter/material.dart';

import 'chat.dart';
import 'constants.dart';
import 'customized_button.dart';
import 'customized_textfield.dart';

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
              CustomizedTextField(
                text: 'Email',
              ),
              CustomizedTextField(
                text: 'Username',
              ),
              CustomizedTextField(
                text: 'Password',
                obscureText: true,
              ),
              CustomizedButton(
                color: kPrimaryColor,
                text: 'Sign up',
                onPressed: () {
                  // TODO: handle sign-up
                  Navigator.pushNamed(context, Chat.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
