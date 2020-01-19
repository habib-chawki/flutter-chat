import 'package:flutter/material.dart';

import 'chat_bubble.dart';

class Chat extends StatefulWidget {
  static const String id = 'chat';

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final TextEditingController _textController = TextEditingController();
  // TODO: instead of Text, create a custom-made widget that represent a chat-bubble
  final List<ChatBubble> _chatBubbles = [];

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
                        if (_textController.text.trim() != '') {
                          _chatBubbles.add(ChatBubble(
                              text: '${_textController.text.trim()}'));
                        }
                      });
                      _textController.clear();
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
