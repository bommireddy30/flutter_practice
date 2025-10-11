import 'package:flutter/material.dart';
import 'package:second_project/answer_button.dart';
import 'package:second_project/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  final String question = questions[0].text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(question, style: TextStyle(color: Colors.white)),
          SizedBox(height: 30),
          AnswerButton('Answer 1'),
          SizedBox(height: 20),
          AnswerButton('Answer 2'),
          SizedBox(height: 20),
          AnswerButton('Answer 3'),
          SizedBox(height: 20),
          AnswerButton('Answer 4'),
        ],
      ),
    );
  }
}
