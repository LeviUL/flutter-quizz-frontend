import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Something isn't right :/",
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
              "Couldn't reach the server or there are no questions availabe at the moment!",
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
