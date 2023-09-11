import 'package:finish_it_demo/features/search%20result/ui/recipelistresult.dart';
import 'package:finish_it_demo/features/settings/app_feedback.dart';
import 'package:finish_it_demo/features/settings/help_page.dart';
import 'package:finish_it_demo/features/settings/search_history.dart';
import 'package:finish_it_demo/features/settings/terms_and_condition_page.dart';
import 'package:finish_it_demo/ui/landingpage.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int _currentIndex = 0; // Current index for the selected tab

  // Pages to navigate to when icons are clicked
  final List<Widget> _pages = [
    const LandingPage(),
    const RecipeListResult(),
    const SettingsPage(),
  ];
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
          height: 310,
          width: 335,
          // margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 100),
          margin: const EdgeInsets.only(left: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            border: Border.all(color: Colors.black),
          ),
          child: Column(
            children: <Widget>[
              InkWell(
                onTap: () {
                  // Navigate to the feedback page when the ListTile is clicked.
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const AppFeedback(), // Replace FeedbackPage with your actual page.
                    ),
                  );
                },
                child: const ListTile(
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
              ),
              const Divider(
                thickness: 2,
                color: Colors.black,
              ),
              InkWell(
                onTap: () {
                  // Navigate to the clear search history page when the ListTile is clicked.
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const SearchHistory(), // Replace ClearSearchHistoryPage with your actual page.
                    ),
                  );
                },
                child: const ListTile(
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
              ),
              const Divider(
                thickness: 2,
                color: Colors.black,
              ),
              InkWell(
                onTap: () {
                  // Navigate to the help page when the ListTile is clicked.
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const HelpPage(), // Replace HelpPage with your actual page.
                    ),
                  );
                },
                child: const ListTile(
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
              ),
              const Divider(
                thickness: 2,
                color: Colors.black,
              ),
              InkWell(
                onTap: () {
                  // Navigate to the terms page when the ListTile is clicked.
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const TermsAndCondition(), // Replace TermsPage with your actual page.
                    ),
                  );
                },
                child: const ListTile(
                  leading: Icon(Icons.arrow_forward),
                  title: Text(
                    "Terms of privacy policy",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                ),
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
          )),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF018354),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });

          // Navigate to the selected page
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => _pages[index],
            ),
          );
        },
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.white,
        selectedLabelStyle: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star_outline,
            ),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_outlined,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
