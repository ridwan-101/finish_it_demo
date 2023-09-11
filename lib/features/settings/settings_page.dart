import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 282,
        width: 358,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
    );
  }
}
