import 'package:finish_it_demo/features/search%20result/ui/custom%20containers/refresh_logic.dart';
import 'package:finish_it_demo/home%20page/landingpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/search_result_bloc.dart';

class RecipeListResult extends StatefulWidget {
  const RecipeListResult({super.key, required void recipe});

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
      // listenWhen: (previous, current) {},
      // buildWhen: (previous, current) {},
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
                Navigator.push(
                  context,

                  MaterialPageRoute(
                      builder: (context) =>
                          const LandingPage()), // Replace NewPage with your actual page widget
                );
              },
            ),
          ),
          // ... previous code ...

          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomButtonContainer(
                  onTap: () {
                    // Refresh logic here
                  },
                ),
                const SizedBox(height: 16),
                Center(
                  child: Container(
                    height: 223,
                    width: 370,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      border: Border.all(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
