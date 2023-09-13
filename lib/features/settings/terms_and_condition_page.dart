import 'package:flutter/material.dart';

class TermsAndCondition extends StatefulWidget {
  const TermsAndCondition({super.key});

  @override
  State<TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Terms of Services and Privacy Policy",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF323232)),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 550,
          width: 335,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            border: Border.all(color: Colors.black),
          ),
          // child: const Center(
          //   child: Text(
          //     "",
          //     style: TextStyle(
          //       fontSize: 18,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          // ),
          child: const Divider(
            thickness: 2,
            color: Colors.black,
          ),

          
        ),
      ),
    );
  }
}
