import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 32.0),
      child: Column(
        children: [
          Text(
            "Welcome To Quiziador",
            style: TextStyle(
              color: Theme.of(context).primaryColorDark,
              fontWeight: FontWeight.w900,
              fontSize: 28,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 32.0),
            child: const Text(
              textAlign: TextAlign.center,
              "Test your might in this thrilling quiz game that challenges your knowledge across a variety of subjects!",
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}
