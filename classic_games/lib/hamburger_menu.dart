import 'package:classic_games/game_page.dart';
import 'package:flutter/material.dart';
import 'package:classic_games/home_page.dart'; // TODO: separate the home page out of main!

class HamburgerMenu extends StatefulWidget {
  const HamburgerMenu({Key? key}) : super(key: key);

  @override
  State<HamburgerMenu> createState() => _HamburgerMenuState();

  // Singleton to be used everywhere, since we only need one menu for pages to share
  static HamburgerMenu hamburgerMenuSingleton = const HamburgerMenu();
}

class _HamburgerMenuState extends State<HamburgerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // ListView adds scrolling in case there are too many options to fit on the screen
      child: ListView(
        padding: EdgeInsets.zero, // No padding
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              // Close the menu
              Navigator.pop(context);
              Navigator.pop(context);

              // Open the new page
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomePage.homePageSingleton));
            },
          ),
          ListTile(
            title: const Text('Sample Game Page'),
            onTap: () {
              // Close the menu
              Navigator.pop(context);
              Navigator.pop(context);

              // Navigate to the 2nd page
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GamePage(
                          gameWidget:
                              SelectableText("Testing out a game widget!"))));
            },
          ),
        ],
      ),
    );
  }
}
