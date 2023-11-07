import 'package:flutter/material.dart';
import 'package:introapp/data/questions.dart';
import 'package:introapp/result_screen.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<QuestionScreen> {
  int i = 0;
  String question = questions[0].question;
  List<String> answers = [
    questions[0].answers[0],
    questions[0].answers[1],
    questions[0].answers[2],
    questions[0].answers[3]
  ];

  void changeQuestion() {
    setState(() {
      if (i < 9) {
        i++;
        question = questions[i].question;
        answers = [
          questions[i].answers[0],
          questions[i].answers[1],
          questions[i].answers[2],
          questions[i].answers[3]
        ];
      } else if (i == 9) {
        i++;
        question = "Tebrikler!";
        answers = ["Sonuçları göster."];
      } else {
        i = -1;
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const ResultScreen(),
            ));
      }
    }); // değişikliklerin ekrana da yansıtılması için gerekli..
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              margin: const EdgeInsets.all(40),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(question),
                    ...answers.map((answer) {
                      return ElevatedButton(
                          onPressed: changeQuestion,
                          child: Text(
                            answer,
                            textAlign: TextAlign.center,
                            style: const TextStyle(color: Colors.white),
                          ));
                    })
                  ]))
        ]),
      ),
    );
  }
}
