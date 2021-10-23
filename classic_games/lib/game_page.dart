import 'package:flutter/material.dart';
import 'package:classic_games/hamburger_menu.dart';

class GamePage extends StatefulWidget {
  const GamePage(
      {Key? key,
      required this.gameWidget,
      this.pageName = "Example Game Page Name"})
      : super(key: key);

  final String pageName;
  final Widget gameWidget;

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  // This method is rerun every time setState is called
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: SelectableText(widget.pageName)),
      drawer: HamburgerMenu.hamburgerMenuSingleton,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [widget.gameWidget]),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
