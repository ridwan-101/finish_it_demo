// error screen


// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ErrorScreen extends StatefulWidget {
  const ErrorScreen({super.key});

  @override
  State<ErrorScreen> createState() => _ErrorScreenState();
}

class _ErrorScreenState extends State<ErrorScreen> {
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
              height: 77,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('images/error1.png'),
                  SizedBox(
                    height: 46,
                  ),
                  Text(
                    "You are offline. Check your connection    and try again.",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF000000),
                      letterSpacing: 1.36,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
