import 'package:flutter/material.dart';
import 'package:gemini_sponsor_engine_app/style.dart';

class Chatbox extends StatefulWidget {
  final bool isLight;
  final String message;
  final bool isGemini;
  const Chatbox({super.key, required this.isLight, required this.message, required this.isGemini});

  @override
  State<Chatbox> createState() => _ChatboxState();
}

class _ChatboxState extends State<Chatbox> {
  @override
  Widget build(BuildContext context) {
    double width = AppSizes.screenWidth(context);

    Color bgColor = AppColors.background(!widget.isLight);
    Color textColor = AppColors.background(widget.isLight);
    Alignment boxAlign = widget.isGemini ? Alignment.centerLeft : Alignment.centerRight;
    String user = widget.isGemini ? "~Gemini" : "~You";
    return Align(
      alignment: boxAlign,
      child: Container(
        padding: EdgeInsets.all(8),
        constraints: BoxConstraints(
          maxWidth: width * 0.6,
        ),
        // height: 50, width: 100,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(user, 
            style: TextStyle(color: textColor),),
            Text(widget.message,
              style: TextStyle(color: textColor,),),
          ],
        ),
      ),
    );
  }
}

class ChatContainer extends StatefulWidget {
  final bool isLight;
  final String message;
  final bool isGemini;
  const ChatContainer({super.key, required this.isLight, required this.message, required this.isGemini});

  @override
  State<ChatContainer> createState() => _ChatContainerState();
}

class _ChatContainerState extends State<ChatContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15,),
        Chatbox(isLight: widget.isLight, message: widget.message, isGemini: widget.isGemini)
      ],
    );
  }
}