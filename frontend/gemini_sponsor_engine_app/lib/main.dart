import 'package:flutter/material.dart';
import 'package:gemini_sponsor_engine_app/screens/loading.dart';
import 'package:gemini_sponsor_engine_app/screens/modern_chart.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/chat',
      routes: {
        '/':(context) => const LoadingScreen(),
        '/chat':(context) => Chat(),
      },
    );
  }
}