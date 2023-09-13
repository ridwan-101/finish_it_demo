import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CustomSearchWidget extends StatefulWidget {
  final Function(String) onWordSaved;

  CustomSearchWidget({required this.onWordSaved});

  @override
  _CustomSearchWidgetState createState() => _CustomSearchWidgetState();
}

class _CustomSearchWidgetState extends State<CustomSearchWidget> {
  TextEditingController _searchController = TextEditingController();
  List<String> _typedWords = [];
  List<String> _suggestions = [];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _updateSuggestions(String input) {
    // Your existing suggestion code
    // ...

    // Update suggestions based on user input
  }

  void _saveCurrentWord() async {
    final currentWord = _searchController.text.trim();
    if (currentWord.isNotEmpty) {
      setState(() {
        _typedWords.add(currentWord);
        _searchController.clear();
        _suggestions.clear(); // Clear suggestions after saving a word
      });

      final apiKey = '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'; // Replace with your OpenAI API key
      final endpoint = 'https://api.openai.com/v1/engines/davinci/completions';

      final prompt = "Generate a recipe using ingredients: $_typedWords";

      final response = await http.post(
        Uri.parse(endpoint),
        headers: {
          'Authorization': 'Bearer $apiKey',
          'Content-Type': 'application/json',
        },
        body: {
          'prompt': prompt,
          'max_tokens': 100, // Adjust the max tokens as needed
        },
      );

      if (response.statusCode == 200) {
        final generatedRecipe = response.body;
        // Process the generated recipe as needed
        print(generatedRecipe);

        // Call the callback function to handle the generated recipe
        widget.onWordSaved(generatedRecipe);
      } else {
        // Handle API errors here
        print('Error: ${response.statusCode}');
        print('Response: ${response.body}');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 345,
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: "What ingredients do you have?",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              prefixIcon: const Icon(Icons.search),
            ),
            onChanged: (value) {
              setState(() {
                _updateSuggestions(value);
              });
            },
            onSubmitted: (value) {
              _saveCurrentWord();
            },
          ),
        ),
        const SizedBox(height: 10),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: _typedWords.map((word) {
            return Container(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              decoration: BoxDecoration(
                color: const Color(0xFFC7F6D5),
                borderRadius: BorderRadius.circular(9),
              ),
              child: Text(word),
            );
          }).toList(),
        ),
        const SizedBox(height: 10),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: _suggestions.map((word) {
            return GestureDetector(
              onTap: () {
                _searchController.text = word;
                _saveCurrentWord();
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                margin: const EdgeInsets.all(
                    4), // Add margin for spacing between suggestion boxes
                decoration: BoxDecoration(
                  color: const Color(0xFFE5E7EB),
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Text(word),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
