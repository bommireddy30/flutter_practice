import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:second_project/data/questions.dart';
import 'package:second_project/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  ResultsScreen(this.selectedAnswers, {super.key});
  final List<String> selectedAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': selectedAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> summaryData = getSummaryData();
    final String totalQuestions = questions.length.toString();
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'You answered $numCorrectQuestions out of $totalQuestions questions correctly!',
            style: GoogleFonts.sreeKrushnadevaraya(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          QuestionsSummary(summaryData),
          SizedBox(height: 30),
          Text(
            'Restart Quiz',
            style: GoogleFonts.lato(color: Colors.white, fontSize: 24),
          ),
        ],
      ),
    );
  }
}
