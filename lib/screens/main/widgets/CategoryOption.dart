import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';

class CategoryOption extends StatelessWidget {
  const CategoryOption(
      {super.key,
      required this.category,
      required this.selected,
      required this.myIndex,
      required this.setSelected});

  final Category? category;
  final Function(int? selected) setSelected;
  final int? selected;
  final int myIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 1,
        height: 36,
        child: OutlinedButton(
          onPressed: () {
            setSelected(myIndex);
          },
          style: ButtonStyle(
            side: MaterialStateProperty.all(
                BorderSide(color: Theme.of(context).primaryColorDark)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            backgroundColor: MaterialStatePropertyAll(selected == myIndex
                ? Theme.of(context).primaryColor
                : Colors.transparent),
          ),
          child: Text(
            category != null ? category!.name : "Just Give Me Those Questions",
            style: TextStyle(
                color: selected != myIndex
                    ? Theme.of(context).primaryColorDark
                    : Colors.white),
          ),
        ),
      ),
    );
  }
}
