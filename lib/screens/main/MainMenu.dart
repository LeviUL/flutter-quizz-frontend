import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';
import 'package:quiz_game/screens/main/widgets/CategoriesList.dart';
import 'package:quiz_game/screens/main/widgets/StartButton.dart';
import 'package:quiz_game/screens/main/widgets/Welcome.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});
  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int? _selected;

  @override
  Widget build(BuildContext context) {
    void setSelected(int? selected) {
      setState(() {
        _selected = selected;
      });
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Welcome(),
          CategoriesList(
            selected: _selected,
            setSelected: setSelected,
          ),
          StartButton(
            selected: _selected,
          )
        ],
      ),
    );
  }
}
