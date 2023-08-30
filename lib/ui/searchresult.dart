import 'package:flutter/material.dart';

class CustomSearchWidget extends StatefulWidget {
  @override
  _CustomSearchWidgetState createState() => _CustomSearchWidgetState();
}

class _CustomSearchWidgetState extends State<CustomSearchWidget> {
  TextEditingController _searchController = TextEditingController();

  String _previousTypedWord = ''; // Track the previous typed word

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 345,
          child: TextField(
            controller: _searchController,
            onChanged: (text) {
              setState(() {
                _previousTypedWord = _searchController.text.isNotEmpty
                    ? _searchController.text.split(' ').last
                    : '';
              });
            },
            decoration: InputDecoration(
              hintText: "What ingredients do you want to finish today?",
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
          ),
        ),
        if (_previousTypedWord.isNotEmpty)
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            decoration: BoxDecoration(
              color: const Color(0xFFC7F6D5),
              borderRadius: BorderRadius.circular(9),
            ),
            child: Text(_previousTypedWord),
          ),
      ],
    );
  }
}
