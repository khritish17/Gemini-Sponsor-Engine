import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("Please Wait\nConnecting to the server!!",
            textAlign:TextAlign.center,
          )
          )
      ),
    );
  }
}
