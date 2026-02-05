import 'package:flutter/material.dart';
import 'package:gemini_sponsor_engine_app/core/constants.dart';
import 'package:gemini_sponsor_engine_app/widgets/messageBar.dart';
import 'package:gemini_sponsor_engine_app/widgets/messageListBuilder.dart';

class ModernChat extends StatefulWidget {
  const ModernChat({super.key});

  @override
  State<ModernChat> createState() => _ModernChatState();
}

class _ModernChatState extends State<ModernChat> {
  
  final List<Map<String, dynamic>> _message = [
    {"message":"Hi this is Gemini, How may I help you", "isGemini":true},
  ];

  final TextEditingController _controller = TextEditingController();

  void _sendMessage(){
    if(_controller.text.isEmpty) return;
    setState(() {
      _message.add({
        "message":_controller.text,
        "isGemini": false
      });
    });
    _controller.clear();
    // TODO: Call gemini API service
  }

  @override
  Widget build(BuildContext context) {
    bool isLight = true;
    return Scaffold(
      backgroundColor: ColorsApplication.primaryColor(isLight),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Text("Title Bar PLaceholder"),
              Expanded(child: MessageList(isLight: isLight, messages: _message)),
              MessageBar(isLight: isLight, controller: _controller, onSend: _sendMessage,),
            ],
          ),
        ),
        ),
    );
  }
}