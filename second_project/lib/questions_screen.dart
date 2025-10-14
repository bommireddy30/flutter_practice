import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:second_project/answer_button.dart';
import 'package:second_project/data/questions.dart';
import 'package:second_project/models/quiz_question.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.selectedAnswer, {super.key});
  final void Function(String answer) selectedAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void onTap(String selectedAns) {
    widget.selectedAnswer(selectedAns);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final QuizQuestion currentQuestion = questions[currentQuestionIndex];

    return Center(
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 201, 153, 252),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answerItem) {
              return AnswerButton(answerItem, () {
                onTap(answerItem);
              });
            }),
          ],
        ),
      ),
    );
  }
}
