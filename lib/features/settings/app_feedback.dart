import 'package:finish_it_demo/features/settings/settings_page.dart';
import 'package:flutter/material.dart';

class AppFeedback extends StatefulWidget {
  const AppFeedback({super.key});

  @override
  State<AppFeedback> createState() => _AppFeedbackState();
}

class _AppFeedbackState extends State<AppFeedback> {
  TextEditingController _textController = TextEditingController();

  void _submitFeedback() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "App Feedback",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF323232),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SettingsPage(),
              ),
            );
          },
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 310,
            width: 335,
            margin: const EdgeInsets.only(left: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              border: Border.all(color: Colors.black),
            ),
            child: TextField(
              controller: _textController,
              maxLength: 500, // Limit to 500 characters
              decoration: const InputDecoration(
                hintText: 'Type here...', // Placeholder text
                border: InputBorder.none, // Remove the default border
                contentPadding:
                    EdgeInsets.all(16), // Adjust the padding as needed
              ),
              maxLines: null,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 200,
            height: 45,
            child: ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) =>
                //           const RecipeListResult()), // Replace NewPage with your actual page widget
                // );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1BA371),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Submit Feedback',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
