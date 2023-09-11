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
      appBar: AppBar(
        title: const Text(
          "Settings",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF323232)),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: 350,
        width: 335,
        // margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 100),
        margin: const EdgeInsets.only(left: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          border: Border.all(color: const Color(0xFFA0A0A0)),
        ),

        child: const Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.arrow_forward),
              title: Text(
                "App Feedback",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
            ),
            Divider(
              thickness: 2, // Adjust the thickness as needed
              color: Colors.black, // Adjust the color as needed
            ),
            ListTile(
              leading: Icon(Icons.arrow_forward),
              title: Text(
                "Clear Search History",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
            ),
            Divider(
              thickness: 2, // Adjust the thickness as needed
              color: Colors.black, // Adjust the color as needed
            ),
            ListTile(
              leading: Icon(Icons.arrow_forward),
              title: Text(
                "Help",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
            ),
            Divider(
              thickness: 2, // Adjust the thickness as needed
              color: Colors.black, // Adjust the color as needed
            ),
            ListTile(
              leading: Icon(Icons.arrow_forward),
              title: Text(
                "Terms",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
            ),
            Divider(
              thickness: 2, // Adjust the thickness as needed
              color: Colors.black, // Adjust the color as needed
            ),
            Text("Version1.1")
          ],
        ),
      ),
    );
  }
}
