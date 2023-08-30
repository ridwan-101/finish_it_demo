import 'package:finish_it_demo/api/suggestion.dart';
import 'package:flutter/material.dart';

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
    _suggestions = SuggestionProvider.mockSuggestions
        .where((word) => word.toLowerCase().startsWith(input.toLowerCase()))
        .toList();
  }

  void _saveCurrentWord() {
    final currentWord = _searchController.text.trim();
    if (currentWord.isNotEmpty) {
      widget.onWordSaved(currentWord);
      setState(() {
        _typedWords.add(currentWord);
        _searchController.clear();
        _suggestions.clear(); // Clear suggestions after saving a word
      });
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
              hintText: "What ingredients do you have ?",
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
