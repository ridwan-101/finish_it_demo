import 'package:finish_it_demo/features/settings/app_feedback.dart';
import 'package:finish_it_demo/features/settings/help_page.dart';
import 'package:finish_it_demo/features/settings/search_history.dart';
import 'package:finish_it_demo/features/settings/terms_and_condition_page.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Settings",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF323232),
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: 310,
            width: 335,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black),
            ),
            child: Column(
              children: <Widget>[
                _buildListTile(
                  context,
                  "App Feedback",
                  const AppFeedback(),
                ),
                const Divider(
                  thickness: 2,
                  color: Colors.black,
                ),
                _buildListTile(
                  context,
                  "Clear Search History",
                  const SearchHistory(),
                ),
                const Divider(
                  thickness: 2,
                  color: Colors.black,
                ),
                _buildListTile(
                  context,
                  "Help",
                  const HelpPage(),
                ),
                const Divider(
                  thickness: 2,
                  color: Colors.black,
                ),
                _buildListTile(
                  context,
                  "Terms of Privacy Policy",
                  const TermsAndCondition(),
                ),
                const Divider(
                  thickness: 2,
                  color: Colors.black,
                ),
                const Text(
                  "Version 1.1",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ListTile _buildListTile(
      BuildContext context, String title, Widget destination) {
    return ListTile(
      leading: const Icon(Icons.arrow_forward),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w900,
          color: Colors.black,
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => destination,
          ),
        );
      },
    );
  }
}
