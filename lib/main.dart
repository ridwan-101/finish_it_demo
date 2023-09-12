import 'package:finish_it_demo/alex/fourth.dart';
import 'package:finish_it_demo/alex/errorscreen.dart';
import 'package:finish_it_demo/alex/norecepie_error.dart';
import 'package:finish_it_demo/ui/landingpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const ErrorScreen(),
    );
  }
}
