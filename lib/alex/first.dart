// no recipe

// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:finish_it_demo/features/search%20result/ui/custom%20containers/refresh_logic.dart';
import 'package:finish_it_demo/ui/landingpage.dart';
import 'package:flutter/material.dart';

class NoRecipe extends StatefulWidget {
  const NoRecipe({super.key});

  @override
  State<NoRecipe> createState() => _NoRecipeState();
}

class _NoRecipeState extends State<NoRecipe> {
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
            CustomButtonContainer(
              onTap: () {
                // Refresh logic here
              },
            ),
          ],
        ),
      ),
    );
  }
}




   // child:   SizedBox(
      //     height: MediaQuery.of(context).size.height,
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         Text(
      //           "No Recipe found",
      //           style: TextStyle(
      //             fontSize: 20,
      //             fontWeight: FontWeight.w500,
      //             color: Color(0xFF000000),
      //             letterSpacing: 1,
      //           ),
      //           textAlign: TextAlign.center,
      //         ),
      //         SizedBox(height: 30),
      //         Image.asset('images/norecipe.png'),
      //         SizedBox(
      //           height: 46,
      //         ),
      //         Text(
      //           "Oops! Looks like the recipe search got a little \n too hungry and ate all the recipes. \n Please add more ingredients!",
      //           style: TextStyle(
      //             fontSize: 16,
      //             fontWeight: FontWeight.w400,
      //             color: Color(0xFF000000),
      //             letterSpacing: 0.48,
      //           ),
      //           textAlign: TextAlign.center,
      //         )
      //       ],
      //     ),
      //   ),