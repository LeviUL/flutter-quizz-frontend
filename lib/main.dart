import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:quiz_game/App.dart';
import 'package:quiz_game/providers/SessionData.dart';
import 'package:quiz_game/providers/Game.dart';
import 'package:quiz_game/screens/main/MainMenu.dart';

void main() {
  runApp(const Index());
}

class Index extends StatelessWidget {
  const Index({Key? key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Game()),
        ChangeNotifierProvider(create: (context) => SessionData()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Color.fromARGB(255, 74, 223, 146),
          ),
          useMaterial3: true,
          primaryColor: Color.fromARGB(255, 52, 207, 127),
          primaryColorDark: Color.fromARGB(255, 35, 137, 84),
          primaryColorLight: Color.fromARGB(255, 72, 242, 154),
        ),
        home: const Main(),
      ),
    );
  }
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    void hideStatusBar() {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
          overlays: [SystemUiOverlay.bottom]);
    }

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    SessionData sessionData = Provider.of(context);

    return GestureDetector(
      onDoubleTap: hideStatusBar,
      onTap: hideStatusBar,
      child: PopScope(
        canPop: false,
        onPopInvoked: (details) {
          print(ModalRoute.of(context));
          bool shouldPop = ModalRoute.of(context)?.isFirst ?? false;
          if (shouldPop) {
            print("popping...");
            Navigator.of(context).pop(true);
            Navigator.of(context).pop(true);
          } else {
            print("going to main...");
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const MainMenu(),
              ),
            );
          }
        },
        child: Scaffold(
          body: Builder(builder: (BuildContext newContext) {
            return AppWidget(sessionData: sessionData);
          }),
        ),
      ),
    );
  }
}
