// import 'package:askit/videocall/call.dart';
// import 'package:askit/livestream/call.dart';
import 'package:askit/Screens/fieldScreen.dart';
import 'package:flutter/material.dart';

import "data.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  //This is dae wae to git mah bruddas
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Container(
        height: 100,
        width: 100,
        child: Scaffold(
            appBar: AppBar(
              elevation: 10,
              toolbarHeight: 110,
              titleSpacing: 40,
              title: const Text("Choose your Field"),
            ),
            body: FieldScreen()),
      ),
    );
  }
}
