import 'package:flutter/material.dart';
import 'package:gemini_sponsor_engine_app/widgets/messageBox.dart';

class MessageList extends StatefulWidget {
  final bool isLight;
  final List<Map<String, dynamic>> messages;

  const MessageList({super.key, required this.isLight, required this.messages});

  @override
  State<MessageList> createState() => _MessageListState();
}

class _MessageListState extends State<MessageList> {
  @override
  Widget build(BuildContext context) {
    bool isLight = widget.isLight;
    return ListView.builder(
      itemCount: widget.messages.length,
      itemBuilder: (context, index){
        return Padding(
          padding: EdgeInsets.all(8),
          child: MessageBox(
            isLight: isLight, 
            message: widget.messages[index]["message"], 
            isGemini: widget.messages[index]["isGemini"],
            ),
          );
      }
    );
  }
}