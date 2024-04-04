import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_game/providers/SessionData.dart';
import 'package:quiz_game/screens/main/MainMenu.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key, required this.sessionData});
  final sessionData;

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  void initState() {
    super.initState();
    widget.sessionData.initApp();
  }

  @override
  Widget build(BuildContext context) {
    SessionData sessionData = Provider.of(context);
    bool loading = sessionData.sessionLoading;

    return Center(
        child: loading
            ? (const Center(
                child: Text("Loading"),
              ))
            : SafeArea(
                child: (Padding(
                    padding: const EdgeInsets.all(16),
                    child: Navigator(
                      onGenerateRoute: (settings) {
                        return MaterialPageRoute(
                          builder: (context) {
                            // Replace this with your main menu or the appropriate widget
                            return const MainMenu();
                          },
                        );
                      },
                    ))),
              ));
  }
}
