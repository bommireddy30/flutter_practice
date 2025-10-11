import 'package:flutter/material.dart';
import 'package:second_project/questions_screen.dart';
import 'package:second_project/start_screen.dart';

class QuizState extends StatefulWidget {
  const QuizState({super.key});

  @override
  State<QuizState> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<QuizState> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 3, 3, 23),
                const Color.fromARGB(255, 31, 28, 179),
              ],

              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),

          child: activeScreen,
        ),
      ),
    );
  }
}
