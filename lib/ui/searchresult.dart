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

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _saveCurrentWord() {
    final currentWord = _searchController.text.trim();
    if (currentWord.isNotEmpty) {
      widget.onWordSaved(currentWord);
      setState(() {
        _typedWords.add(currentWord);
        _searchController.clear();
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
              hintText: "Type a word...",
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
            onSubmitted: (value) {
              _saveCurrentWord();
            },
          ),
        ),
        const SizedBox(height: 10),
        Wrap(
          spacing: 10, // Adjust the spacing between containers
          runSpacing: 10, // Adjust the spacing between rows
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
      ],
    );
  }
}
