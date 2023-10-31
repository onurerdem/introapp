import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      backgroundColor: Color.fromARGB(255, 70, 4, 105),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Onur Erdem',
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
            Text(
              'Mobil Geliştirici (Flutter) - 1A',
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            Text(
              '31.10.2023',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      ),
    ),
  ));
}
// const