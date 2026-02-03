import 'package:flutter/material.dart';
import 'package:gemini_sponsor_engine_app/style.dart';


class UserChatBox extends StatefulWidget {
  final String message;
  final bool isLight;
  final String user;
  const UserChatBox({super.key, required this.message, required this.isLight, required this.user});

  @override
  State<UserChatBox> createState() => _UserChatBox();
}

class _UserChatBox extends State<UserChatBox> {
  @override
  Widget build(BuildContext context) {
    // double height = AppSizes.screenHeight(context);
    double width = AppSizes.screenWidth(context);
    
    // Colors import
    List<Color> shadows = AppColors.shadow(widget.isLight);
    Color background = AppColors.background(widget.isLight);
    Color accentColor = AppColors.userColorAccent;
    

    Alignment alignment = Alignment.centerRight;
    if (widget.user == "~Gemini"){
      accentColor = AppColors.aiColorAccent;
      alignment = Alignment.centerLeft;
    }

    return Align(
      alignment: alignment,
      child: Container(
        // width: width *0.7,
        // height: height * 0.1,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: shadows[0],
              offset: Offset(-5, -5),
              blurRadius: 5.0
            ),
            BoxShadow(
              color: shadows[1],
              offset: Offset(5, 5),
              blurRadius: 5.0
            )
            ]
        ),
        child: Container(
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: accentColor, 
            borderRadius: BorderRadius.circular(15)
            ),
          child: Container(
            padding: EdgeInsets.all(9),
            decoration: BoxDecoration(
              color: background,
              borderRadius: BorderRadius.circular(13)
            ),
            child: TextDisplay(message: widget.message, user: widget.user,isLight: widget.isLight,),
          ),
        ),
      ),
    );
  }
}

// TextDisplay(message: widget.message, user: widget.user,)

class TextDisplay extends StatefulWidget {
  final String message;
  final String user;
  final bool isLight;
  const TextDisplay({super.key, required this.message, required this.user, required this.isLight});

  @override
  State<TextDisplay> createState() => _TextDisplayState();
}

class _TextDisplayState extends State<TextDisplay> {
  @override
  Widget build(BuildContext context) {
    Color textColor = AppColors.textColor(widget.isLight);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          widget.user,
          style: TextStyle(color: textColor),),
        Text(widget.message,
        style: TextStyle(color: textColor),)
      ],
    );
  }
}