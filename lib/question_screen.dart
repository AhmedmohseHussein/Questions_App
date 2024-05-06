import 'package:flutter/material.dart';
import 'package:second_app/answer_button.dart';
import 'package:second_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int index = 0;
  List answers = [];
  void answerQuestion() {
    setState(() {
      index++;
      // answers.add();
    });
  }

  @override
  Widget build(BuildContext context) {
    final currintQuestion = questions[index];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currintQuestion.text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 19,
                color: Color.fromARGB(255, 237, 223, 252),
              ),
            ),
            const SizedBox(
              height: 30,
            ),

            ...currintQuestion.getSuffledList().map(
                  (answer) => Container(
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    child: AnswerButton(
                      answerText: answer,
                      onTap: answerQuestion,
                    ),
                  ),
                ),

            //  for(int start = 0;start<questions[currintQuestionIndix].answers.length;start++){
            //     AnswerButton(
            //     answerText: questions[currintQuestionIndix].answers[start],
            //     nextQuestion: () {},
            //   ),
            //   }.toList(),
          ],
        ),
      ),
    );
  }
}
