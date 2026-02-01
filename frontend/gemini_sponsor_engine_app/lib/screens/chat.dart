import 'package:flutter/material.dart';
import 'package:gemini_sponsor_engine_app/widgets/chat_box.dart';

class ChatUI extends StatefulWidget {
  const ChatUI({super.key});

  @override
  State<ChatUI> createState() => _ChatUIState();
}

class _ChatUIState extends State<ChatUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [ChatBox()],
            ),
            Text("Chat ui")
          ],
        ),
        ),
    );
  }
}