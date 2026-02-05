import 'package:flutter/material.dart';
import 'package:gemini_sponsor_engine_app/core/constants.dart';

class MessageBox extends StatefulWidget {
  final bool isLight;
  final String message;
  final bool isGemini;
  const MessageBox({super.key, required this.isLight, required this.message, required this.isGemini});

  @override
  State<MessageBox> createState() => _MessageBoxState();
}

class _MessageBoxState extends State<MessageBox> {
  @override
  Widget build(BuildContext context) {
    bool isLight = widget.isLight;
    String message = widget.message;
    bool isGemini = widget.isGemini;
    Alignment alignment = isGemini ? Alignment.centerLeft : Alignment.centerRight;
    Color messageBoxColor = isGemini ? ColorsApplication.secondaryColor(isLight) : ColorsApplication.actionColor(isLight);
    BorderRadius borderRadius = isGemini ? BorderRadius.only(topRight: Radius.circular(18), bottomRight: Radius.circular(18)): BorderRadius.only(topLeft: Radius.circular(18), bottomLeft: Radius.circular(18));
    Color textColor = ColorsApplication.primaryColor(false);
    return Column(
      children: [
        SizedBox(height: 8,),
        Align(
          alignment: alignment,
          child: Container(
            constraints: BoxConstraints(
              maxWidth: SizesApplication.screenWidth(context) * 0.7,
            ),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: messageBoxColor,
              borderRadius: borderRadius ,
            ),
            child: Text(
              message,
              style: TextStyle(color: textColor),),
          ),
        ),
      ],
    );
  }
}