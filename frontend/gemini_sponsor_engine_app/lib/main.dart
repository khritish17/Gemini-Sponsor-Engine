import 'package:flutter/material.dart';
import 'package:gemini_sponsor_engine_app/screens/chat.dart';
import 'package:gemini_sponsor_engine_app/screens/loading.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/chatui',
      routes: {
        '/':(context) => const LoadingScreen(),
        '/chatui':(context) => ChatUI()
      },
    );
  }
}