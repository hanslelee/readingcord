import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:readingcord/src/view/home_screen.dart';



class ReadingCord extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Ollacare',
        theme: ThemeData(
          // fontFamily: 'AppleSDGothicNeo',
          primaryColor: Colors.white,
        ),
        home: HomeScreen(),
      );
  }
}
