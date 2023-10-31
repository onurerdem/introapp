import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: const Color.fromARGB(255, 70, 4, 105),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/2120418120210530115238453.jpg',
              height: 150.0,
              fit: BoxFit.cover,
            ),
            const Text(
              'Onur Erdem',
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
            const Text(
              'Mobil Geliştirici (Flutter) - 1A',
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            const Text(
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