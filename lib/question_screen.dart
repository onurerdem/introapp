import 'package:flutter/material.dart';
import 'package:introapp/data/questions.dart';
import 'package:introapp/result_screen.dart';

class QuestionScreen extends StatefulWidget {
  // required = constructorda ilgili named argument'in verilmeden ilgili classın construct edilmemesini sağlar.
  // eğer named argument değilse zaten zorunludur
  const QuestionScreen({Key? key, required this.onChooseAnswer})
      : super(key: key);
  final void Function(String answer) onChooseAnswer;

  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<QuestionScreen> {
  int currentQuestionIndex = 0; // O an kaçıncı soruda olduğumu

  void changeQuestion(String answer) {
    setState(() {
      widget.onChooseAnswer(answer);
      if (questions.length - 1 > currentQuestionIndex) currentQuestionIndex++;
       else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultScreen(correctAnswers: currentQuestionIndex),
        ),
      );
    }
    }); // değişikliklerin ekrana da yansıtılması için gerekli..
    // setState => build fonkisyonunu yeniden çalıştırır.
  }

  // Spread Operator
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[
        currentQuestionIndex]; // Liste içerisinden o an kaçıncı soruda isek
    // o indexdeki veriyi al.

    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            margin: const EdgeInsets.fromLTRB(40, 0, 40, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(currentQuestion.question),
                ...currentQuestion.answers.map((answer) {
                  return ElevatedButton(
                      child: Text(answer),
                      onPressed: () {
                        changeQuestion(answer);
                      });
                })
              ],
            ),
          )
        ]),
      ),
    );
  }
}