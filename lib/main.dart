import 'package:flutter/material.dart';
import 'start_screen.dart';

void main() {
  runApp(const FlagQuiz());
}

class FlagQuiz extends StatelessWidget {
  const FlagQuiz({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
