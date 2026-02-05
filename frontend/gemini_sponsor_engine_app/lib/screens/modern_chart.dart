import 'package:flutter/material.dart';
import 'package:gemini_sponsor_engine_app/style.dart';
import 'package:gemini_sponsor_engine_app/widgets/chatBox.dart';


class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {

  final List<Map<String, dynamic>> _messages = [
    {"message": "Hi, this is Gemini, How may i help you!", "isGemini": true}
  ];
  final TextEditingController _controller = TextEditingController();

  void _sendMessage(){
    if (_controller.text.isEmpty) return;
    setState(() {
      _messages.add({
        "message": _controller.text,
        "isGemini": false
      });
    });
    _controller.clear();
    // TODO: the fastAPI server
  }
  @override
  Widget build(BuildContext context) {
    bool isLight = false;
    return Scaffold(
      backgroundColor: AppColors.background(isLight),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Text("Palce holder for titile bar"),
              Expanded(
                child: ListView.builder(
                  itemCount: _messages.length,
                  itemBuilder: (context, index){
                    return Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: ChatContainer(
                        isLight: isLight,
                        message: _messages[index]["message"],
                        isGemini: _messages[index]["isGemini"],
                      ),
                      );
                  })
                ),
              _buildInputArea(isLight),
            ],
          ),
        )),
    );
  }

  Widget  _buildInputArea(bool isLight){
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: isLight ? AppColors.textBoxColor: AppColors.textBoxColorDark,
        borderRadius: BorderRadius.circular(50)
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              style: TextStyle(
                color: isLight ? AppColors.textBoxColorDark:AppColors.textBoxColor ,
              ),
              decoration: InputDecoration(
                hintText: "Type a message",
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                ),
            )
            ),
          IconButton(onPressed: _sendMessage, icon: const Icon(Icons.send))
        ],
        ),
      );
  }
}