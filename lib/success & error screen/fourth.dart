// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({super.key});

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Center(
          child: Text('Recipe list',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0xFF323232),
              )),
        ),
        leading: ImageIcon(
          AssetImage('images/backicon.png'),
          size: 24,
          color: Colors.black,
        ),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFF2F6F4),
                          borderRadius: BorderRadius.circular(8),
                          border:
                              Border.all(color: Color(0xFFCCC6C6), width: 1)),
                      padding:
                          EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                      child: Row(
                        children: [
                          Text('Rice',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF323232),
                              )),
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset('images/x.png')
                        ],
                      )),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFF2F6F4),
                          borderRadius: BorderRadius.circular(8),
                          border:
                              Border.all(color: Color(0xFFCCC6C6), width: 1)),
                      padding: 
                          EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                      child: Row(
                        children: [
                          Text('Egg',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF323232),
                              )),
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset('images/x.png')
                        ],
                      )),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFF2F6F4),
                          borderRadius: BorderRadius.circular(8),
                          border:
                              Border.all(color: Color(0xFFCCC6C6), width: 1)),
                      padding:
                          EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                      child: Row(
                        children: [
                          Text('Olive oil',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF323232),
                              )),
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset('images/x.png')
                        ],
                      )),
                  SizedBox(
                    width: 12,
                  ),
                  Image.asset('images/Add.png')
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFF018354),
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: IntrinsicWidth(
                child: Row(
                  children: [
                    Text('Refresh results',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFFAFAFA),
                        )),
                    SizedBox(
                      width: 8,
                    ),
                    Image.asset('images/refresh.png')
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Here are 10 Recipe suggestions",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF323232),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Color(0xFFA0A0A0)),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Egg Fried Rice",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF323232),
                            letterSpacing: 0.03,
                          )),
                      Image.asset('images/star.png')
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Image.asset('images/dot.png'),
                      SizedBox(
                        width: 5,
                      ),
                      Text("30mins | Easy | Serves: 2",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF2F2F2F),
                          ))
                    ],
                  ),
                  SizedBox(height: 5),
                  Text("INGREDIENT LIST:",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF323232),
                      )),
                  Row(
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
                  Text("Instructions",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF323232),
                      )),
                  Text(
                      "• Hatch and stare at the still unhatched 3 succulent newly unhatched \n  eggs \n • Pray towards 3 succulent newly unhatched eggs ",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF323232),
                      )),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    width: 108,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF323232),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text("View Recipe",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFFAFAFA),
                          letterSpacing: 0.01,
                        )),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Color(0xFFA0A0A0)),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Rice Omelette",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF323232),
                            letterSpacing: 0.03,
                          )),
                      Image.asset('images/star.png')
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Image.asset('images/dot.png'),
                      SizedBox(
                        width: 5,
                      ),
                      Text("30mins | Easy | Serves: 2",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF2F2F2F),
                          ))
                    ],
                  ),
                  SizedBox(height: 5),
                  Text("INGREDIENT LIST:",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF323232),
                      )),
                  Row(
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
                      SizedBox(
                        width: 5,
                      ),
                      Text("• +5",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF323232),
                          )),
                    ],
                  ),
                  Text("Instructions",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF323232),
                      )),
                  Text(
                      "• Hatch and stare at the still unhatched 3 succulent newly unhatched \n  eggs \n • Pray towards 3 succulent newly unhatched eggs ",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF323232),
                      )),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    width: 108,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF323232),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text("View Recipe",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFFAFAFA),
                          letterSpacing: 0.01,
                        )),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Color(0xFFA0A0A0)),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Egg Rice Bowl",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF323232),
                            letterSpacing: 0.03,
                          )),
                      Image.asset('images/star.png')
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Image.asset('images/dot.png'),
                      SizedBox(
                        width: 5,
                      ),
                      Text("30mins | Easy | Serves: 2",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF2F2F2F),
                          ))
                    ],
                  ),
                  SizedBox(height: 5),
                  Text("INGREDIENT LIST:",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF323232),
                      )),
                  Row(
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
                  Text("Instructions",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF323232),
                      )),
                  Text(
                      "• Hatch and stare at the still unhatched 3 succulent newly unhatched \n  eggs \n • Pray towards 3 succulent newly unhatched eggs ",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF323232),
                      )),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    width: 108,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF323232),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text("View Recipe",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFFAFAFA),
                          letterSpacing: 0.01,
                        )),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}