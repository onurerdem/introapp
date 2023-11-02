import 'package:flutter/material.dart';
import 'package:introapp/data/questions.dart';

void main() {
  runApp(const MaterialApp(home: QuestionScreen()));
}

// Stateless => Ekranda değişime uğramayacak, UI widget
// CTRL + .
class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/quiz-logo.png", width: 250),
            const Text(
              "Quiz App",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text("Start"),
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.fromLTRB(40, 20, 40, 20)),
            ),
          ],
        ),
      ),
    );
  }
}

// Boilerplate

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
      } else {
        i = -1;
        question = "Tebrikler!";
        answers = ["Tekrar başla."];
      }
    }); // değişikliklerin ekrana da yansıtılması için gerekli..
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
        ]),
      ),
    );
  }
}
