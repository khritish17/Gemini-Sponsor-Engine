import 'package:flutter/material.dart';


class ChatBox extends StatefulWidget {
  const ChatBox({super.key});

  @override
  State<ChatBox> createState() => _ChatBoxState();
}

class _ChatBoxState extends State<ChatBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      
      decoration: BoxDecoration(
        color: Colors.blue),
      //child: Text("This is a chat box"), 
      );
  }
}