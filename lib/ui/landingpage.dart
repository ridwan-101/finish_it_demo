import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'images/upercurved.png',
            fit: BoxFit.none,
            alignment: Alignment.bottomCenter,
          ),
          const SizedBox(height: 60),
          Image.asset(
            'images/logo.png',
            fit: BoxFit.none,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Welcome to Finish it",
            style: TextStyle(
              fontSize: 32,
              height: 1.2,
              fontFamily: "Lato",
              fontWeight: FontWeight.w500,
              color: Color(0xFF1BA371),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Find recipes based on the ingredients you have",
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 370,
            width: 350,
            child: TextField(
              decoration: InputDecoration(
                hintText: "What ingredients do you want to finish today ",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
