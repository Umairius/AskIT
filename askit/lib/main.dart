import 'package:flutter/material.dart';
import "subjectcard.dart";
import "data.dart";

void main() {
  runApp(const MyApp());
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
      home: Scaffold(
        appBar: AppBar(title: Text("Choose your Subject")),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: Data.map((field) {
            return SubjectCard(field.name.toString(), field.color);
          }).toList(),
        ),
      ),
    );
  }
}
