import 'package:flutter/material.dart';
import 'package:second_app/question_screen.dart';
import 'package:second_app/start_screen.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  String activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    final Widget screenWidget = activeScreen == 'start-screen'
        ? StartScreen(switchScreen)
        : const QuestionsScreen();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168)
              ])),
          child: screenWidget,
        ),
      ),
    );
  }
}

// drive between sceens function

// Widget? choesScreen() {
//     Widget? theScreen;
//     if (activeScreen == 'start-screen') {
//       theScreen = StartScreen(switchScreen);
//     } else {
//       theScreen = const QuestionsScreen();
//     }
//     return theScreen;
//   }

// if (activeScreen == 'questions-screen') {
//       screenWidget = const QuestionsScreen();
//     }
