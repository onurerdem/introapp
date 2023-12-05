import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final int correctAnswers;

  const ResultScreen({Key? key, required this.correctAnswers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Tebrikler, $correctAnswers doğru cevapladınız!",
              style: TextStyle(fontSize: 16),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text(
                "Yeniden Başla",
                style: TextStyle(fontSize: 20),
              ),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}