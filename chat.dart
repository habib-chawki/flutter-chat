import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  static const String id = 'chat';

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final TextEditingController _textController = TextEditingController();
  final List<Text> _chatBubbles = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
          ),
          body: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ListView.builder(
                    itemCount: _chatBubbles.length,
                    itemBuilder: (context, index) => _chatBubbles[index],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        controller: _textController,
                        decoration: InputDecoration(
                          hintText: 'Type a message ...',
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.send),
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          _chatBubbles.add(Text('${_textController.text}'));
                        });
                        _textController.clear();
                      },
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
