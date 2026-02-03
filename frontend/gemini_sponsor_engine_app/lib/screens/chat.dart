import 'package:flutter/material.dart';
import 'package:gemini_sponsor_engine_app/style.dart';
import 'package:gemini_sponsor_engine_app/widgets/chat_box.dart';
import 'package:gemini_sponsor_engine_app/widgets/titleBar.dart';
// import 'package:gemini_sponsor_engine_app/widgets/chat_box.dart';

class ChatUI extends StatefulWidget {
  const ChatUI({super.key});

  @override
  State<ChatUI> createState() => _ChatUIState();
}

class _ChatUIState extends State<ChatUI> {
  @override
  Widget build(BuildContext context) {
    bool isLight = true;
    return Scaffold(
      backgroundColor: AppColors.background(isLight) ,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: AppColors.background(isLight),
          ),
          child: Column(
            children: [
              Titlebar(isLight: isLight,),
              SizedBox(height: 18,),
              UserChatBox(message: "Hi this is Gemini, ask me anything",isLight: isLight, user: "~Gemini",),
              SizedBox(height: 18,),
              UserChatBox(message: "Shut up!", isLight: isLight, user: "~Khritish",),
              SizedBox(height: 18,),
              UserChatBox(message: "Ohh Okay! =_=", isLight: isLight, user: "~Gemini",),
              SizedBox(height: 18,),
              UserChatBox(message: "Arey mera woo matlab nhi tha yaar Gemini", isLight: isLight, user: "~Khritish",),
              ],        
          ),
        ),
      )
    );
  }
}