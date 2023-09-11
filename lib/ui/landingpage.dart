import 'package:finish_it_demo/features/search%20result/ui/recipelistresult.dart';
import 'package:finish_it_demo/features/settings/settings_page.dart';
import 'package:finish_it_demo/ui/model/searchresult.dart';

import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'images/upercurved.png',
              fit: BoxFit.none,
              alignment: Alignment.bottomCenter,
            ),
            const SizedBox(height: 60),
            Image.asset(
              'images/logo.png',
              fit: BoxFit.none,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Welcome to Finish It",
              style: TextStyle(
                fontSize: 32,
                height: 1.2,
                fontFamily: "Lato",
                fontWeight: FontWeight.w500,
                color: Color(0xFF1BA371),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Find recipes based on the ingredients you have",
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: 345,
              child: CustomSearchWidget(
                onWordSaved: (String) {},
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            SizedBox(
              width: 138,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const RecipeListResult()), // Replace NewPage with your actual page widget
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1BA371),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
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
