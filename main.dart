import 'package:flutter/material.dart';

import 'chat.dart';
import 'login.dart';
import 'signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LogIn.id,
      routes: {
        Chat.id: (context) => Chat(),
        LogIn.id: (context) => LogIn(),
        SignUp.id: (context) => SignUp(),
      },
    );
  }
}
