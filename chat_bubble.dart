import 'package:flutter/material.dart';

//TODO: design a chat bubble
class ChatBubble extends StatelessWidget {
  ChatBubble({@required this.text, this.color});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Align(
      //TODO: toggle left and right based on whether the message is received or sent
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 15),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Text(
          this.text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
