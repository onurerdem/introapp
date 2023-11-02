import 'package:introapp/models/quiz_question.dart';

const questions = [
  QuizQuestion("Aşağıdakilerden hangisi flutterda state'i update eder?",
      ["setState", "constructor", "class", "statelesswidget"]),
  QuizQuestion("Flutter nedir?", [
    "Programlama dili",
    "Bir uygulama geliştirme çerçevesi",
    "Bir veritabanı yönetim sistemi",
    "Bir işletim sistemi"
  ]),
  QuizQuestion("Flutter hangi programlama dili kullanılarak geliştirilmiştir?",
      ["Java", "Python", "Dart", "C++"]),
  QuizQuestion("Flutter uygulamaları hangi platformlarda çalışabilir?", [
    "Yalnızca Android",
    "Yalnızca iOS",
    "Hem Android hem iOS",
    "Yalnızca Windows"
  ]),
  QuizQuestion("Flutter'da widget nedir?", [
    "Kullanıcı arayüz elemanları için temel yapı taşı",
    "Bir veritabanı tablosu",
    "Bir programlama dilinin anahtar kelimesi",
    "Bir dosya uzantısı"
  ]),
  QuizQuestion("Stateless widget'lar...", [
    "Durumu değiştirilebilen widget'lar",
    "Durumu değiştirilemeyen widget'lar",
    "Flutter'daki bir widget türü değildir",
    "Sadece Android'de çalışır"
  ]),
  QuizQuestion(
      "Bir widget'taki durumu değiştirmek için kullanılan metod hangisidir?",
      ["changeState()", "updateState()", "setState()", "modifyState()"]),
  QuizQuestion("Flutter'da hangi paket yöneticisi kullanılır?", [
    "Package Manager",
    "Flutter Package Manager",
    "Dart Packages",
    "pub.dev"
  ]),
  QuizQuestion(
      "Flutter'da eksenler arası hizalama için kullanılan widget nedir?",
      ["Align", "Center", "AxisAlignment", "Spacer"]),
  QuizQuestion(
      "Flutter'da bir widget'ın tıklanabilir olması için kullanılan widget nedir?",
      ["GestureDetector", "Clickable", "Tappable", "Touchable"]),
];
