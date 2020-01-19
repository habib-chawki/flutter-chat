import 'package:flutter/material.dart';

import 'chat.dart';
import 'constants.dart';
import 'customized_button.dart';
import 'customized_textfield.dart';
import 'signup.dart';

class LogIn extends StatelessWidget {
  static const String id = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        title: Text(
          'Log In',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
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
              text: 'Username',
            ),
            CustomizedTextField(
              text: 'Password',
              obscureText: true,
            ),
            CustomizedButton(
              color: kPrimaryColor,
              text: 'Log in',
              onPressed: () {
                // TODO: handle log in
                Navigator.pushNamed(context, Chat.id);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Don\'t have an account ? '),
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SignUp.id);
                  },
                  child: Text('Sign up'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
