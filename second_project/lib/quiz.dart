import 'package:flutter/material.dart';
import 'package:second_project/data/questions.dart';
import 'package:second_project/questions_screen.dart';
import 'package:second_project/results_screen.dart';
import 'package:second_project/start_screen.dart';

class QuizState extends StatefulWidget {
  const QuizState({super.key});

  @override
  State<QuizState> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<QuizState> {
  String activeScreen = 'start-screen';
  List<String> selectedAnswers = [];

  @override
  void initState() {
    activeScreen = 'start-screen';
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(chooseAnswer);
    } else if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(selectedAnswers);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 54, 54, 146),
                const Color.fromARGB(255, 31, 28, 179),
              ],

              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),

          child: screenWidget,
        ),
      ),
    );
  }
}
