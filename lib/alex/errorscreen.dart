// no recipe

// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:finish_it_demo/features/search%20result/ui/custom%20containers/refresh_logic.dart';
import 'package:finish_it_demo/ui/landingpage.dart';
import 'package:flutter/material.dart';

class ErrorScreen extends StatefulWidget {
  const ErrorScreen({super.key});

  @override
  State<ErrorScreen> createState() => _NoRecipeState();
}

class _NoRecipeState extends State<ErrorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Recipe List",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF323232)),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      const LandingPage()), // Replace NewPage with your actual page widget
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: CustomButtonContainer(
                onTap: () {
                  // Refresh logic here
                },
              ), // refresh list custom container
            ),
            SizedBox(height: 20), // Add some spacing
            // Add your new container here
            Column(
              children: [
                Container(
                  width: double.infinity, // Match the screen width
                  padding: EdgeInsets.all(20),

                  child: Text(
                    "No Recipe found", // Replace with your content
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF000000),
                      letterSpacing: 1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 46,
                ),
                Image.asset('images/error.png'),
                Text(
                  "You are offline. Check your connection \n and try again",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF000000),
                    letterSpacing: 0.48,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
