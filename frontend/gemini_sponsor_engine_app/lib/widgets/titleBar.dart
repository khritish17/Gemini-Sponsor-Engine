import 'package:flutter/material.dart';
import 'package:gemini_sponsor_engine_app/style.dart';

class Titlebar extends StatefulWidget {
  final bool isLight;
  const Titlebar({super.key, required this.isLight});

  @override
  State<Titlebar> createState() => _TitlebarState();
}

class _TitlebarState extends State<Titlebar> {
  @override
  Widget build(BuildContext context) {
    Color textColor = AppColors.textColor(widget.isLight);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text("Ad Gemini", style: TextStyle(color: textColor),)],
      );
  }
}