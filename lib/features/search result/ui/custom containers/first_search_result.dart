import 'package:flutter/material.dart';

class FirstSearchResultBoxed extends StatefulWidget {
  const FirstSearchResultBoxed({super.key});

  @override
  State<FirstSearchResultBoxed> createState() => _FirstSearchResultBoxedState();
}

class _FirstSearchResultBoxedState extends State<FirstSearchResultBoxed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 310,
          width: 335,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
