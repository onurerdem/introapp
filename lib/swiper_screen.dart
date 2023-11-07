import 'package:flutter/material.dart';
import 'package:introapp/question_screen.dart';
import 'package:introapp/start_screen.dart';

class SwiperScreen extends StatefulWidget {
  const SwiperScreen({Key? key}) : super(key: key);

  @override
  _SwiperScreenState createState() => _SwiperScreenState();
}

class _SwiperScreenState extends State<SwiperScreen> {
  var _activeScreenName = "start-screen";

  void changeScreen() {
    setState(() {
      _activeScreenName = "quiz-screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen = StartScreen(changeScreen);

    if (_activeScreenName == "quiz-screen") {
      activeScreen = const QuestionScreen();
    }

    return Container(child: activeScreen);
  }
}