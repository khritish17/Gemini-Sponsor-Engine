import 'package:flutter/material.dart';
import 'package:gemini_sponsor_engine_app/core/constants.dart';

class MessageBar extends StatefulWidget {
  final bool isLight;
  final TextEditingController controller;
  final VoidCallback onSend;
  const MessageBar({super.key, required this.isLight, required this.controller, required this.onSend});

  @override
  State<MessageBar> createState() => _MessageBarState();
}

class _MessageBarState extends State<MessageBar> {
  @override
  Widget build(BuildContext context) {
    bool isLight = widget.isLight;
    return Container(
      padding: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: ColorsApplication.accentColor(isLight),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(18), topRight: Radius.circular(18))
      ),
      child: Row(
        children: [
          Expanded(
            child:TextField(
              controller: widget.controller,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(8),
                border: InputBorder.none,
                hintText: "Ask Gemini"
              ),
            ), 
            ),
          IconButton(onPressed: widget.onSend, icon: Icon(Icons.send)),
        ],
      ),
    );
  }
}
