import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,

      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: summaryData.map((summary) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10, top: 0),
                    child: Container(
                      padding: const EdgeInsets.all(
                        8,
                      ), // Adds space between the character and the circle edge
                      decoration: BoxDecoration(
                        color: Colors.blue[400],
                        shape: BoxShape.circle, // Creates a circular shape
                      ),
                      child: Text(
                        ((summary['question_index'] as int) + 1).toString(),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 0,
                        vertical: 5,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            (summary['question'] as String),
                            style: GoogleFonts.lato(
                              color: Colors.blue[200],
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            summary['user_answer'] as String,
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            summary['correct_answer'] as String,
                            style: TextStyle(
                              color: Color.fromARGB(255, 201, 153, 252),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
