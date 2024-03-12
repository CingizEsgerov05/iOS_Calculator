import 'package:flutter/material.dart';

class EasterEgg extends StatelessWidget {
  const EasterEgg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leadingWidth: 80,
        iconTheme: const IconThemeData(size: 40),
        toolbarHeight: 80,
        backgroundColor: Colors.black,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Made by Chingiz Asgarov',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 51, 75, 231)),
          ),
        ),
      ),
    );
  }
}
