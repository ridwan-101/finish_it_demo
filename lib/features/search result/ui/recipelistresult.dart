import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/search_result_bloc.dart';

class RecipeListResult extends StatefulWidget {
  const RecipeListResult({super.key});

  @override
  State<RecipeListResult> createState() => _RecipeListResultState();
}

class _RecipeListResultState extends State<RecipeListResult> {
  final SearchResultBloc searchResultBloc =
      SearchResultBloc(); // instance of the class
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchResultBloc, SearchResultState>(
      bloc: searchResultBloc, //parameter SearchResultBloc
      listenWhen: (previous, current) {},
      buildWhen: (previous, current) {},
      listener: (context, state) {},
      builder: (context, state) {
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
                Navigator.pop(context);
              },
            ),
          ),
        );
      },
    );
  }
}
