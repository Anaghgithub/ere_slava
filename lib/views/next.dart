import 'package:flutter/material.dart';

class Nextpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text("Next Page"),
      ),
      body: const Center(
        child: Text(
          "You have successfully logged in! 🎉",
          style: TextStyle(
            fontSize: 20.0, // Adjust the font size as needed
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center, // Center the text
        ),
      ),
    );
  }
}
