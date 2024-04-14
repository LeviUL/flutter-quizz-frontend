import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';
import 'package:provider/provider.dart';

import 'package:quiz_game/providers/SessionData.dart';
import 'package:quiz_game/screens/main/widgets/CategoryOption.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList(
      {super.key, required this.selected, required this.setSelected});
  final int? selected;
  final Function(int? selected) setSelected;

  @override
  Widget build(BuildContext context) {
    SessionData sessionData = Provider.of(context);
    List<Category> categories = sessionData.getCategories();

    return Expanded(
      child: ListView.builder(
        itemCount: categories.length + 1,
        itemBuilder: (context, index) {
          if (index == categories.length) {
            return CategoryOption(
              category: null,
              selected: selected,
              setSelected: setSelected,
              myIndex: index,
            );
          } else {
            return CategoryOption(
                category: categories[index],
                myIndex: index,
                selected: selected,
                setSelected: setSelected);
          }
        },
      ),
    );
  }
}
