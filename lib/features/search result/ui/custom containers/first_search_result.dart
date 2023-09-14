import 'package:flutter/material.dart';

class FirstSearchResult extends StatefulWidget {
  const FirstSearchResult({super.key});

  @override
  State<FirstSearchResult> createState() => _FirstSearchResultState();
}

class _FirstSearchResultState extends State<FirstSearchResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: const Color(0xFFA0A0A0)),
              borderRadius: BorderRadius.circular(8),
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Egg Fried Rice",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF323232),
                        letterSpacing: 0.03,
                      )),
                  Image.asset('images/star.png')
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Image.asset('images/dot.png'),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text("30mins | Easy | Serves: 2",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF2F2F2F),
                      ))
                ],
              ),
              const SizedBox(height: 5),
              const Text("INGREDIENT LIST:",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF323232),
                  )),
              const Row(
                children: [
                  Text("• Egg",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF323232),
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Text("• Rice",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF323232),
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Text("• Cooking oil",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF323232),
                      )),
                ],
              ),
              const Text("Instructions",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF323232),
                  )),
              const Text(
                  "• Hatch and stare at the still unhatched 3 succulent newly unhatched \n  eggs \n • Pray towards 3 succulent newly unhatched eggs ",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF323232),
                  )),
            ])));
  }
}
