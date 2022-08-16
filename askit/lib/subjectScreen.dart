import 'package:askit/data.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import "subjectcard.dart";

class SubjectScreen extends StatelessWidget {
  int index = 0;
  // const SubjectScreen({Key? key}) : super(key: key);

  String subjectName = "";

  SubjectScreen(this.subjectName);

  // We have to access a specific entry of the data object here
  // For that we have to pass a field argument to it
  // It searches the subject within it and return a list of subjects.

  int indexOfSubject(String subject) {
    int index = 0;
    for (var f in Data) {
      index = index + 1;
      if (f.name == subject) {
        return index;
      }
    }
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    index = indexOfSubject(subjectName);
    var subjectList = <String>[];
    for (var s in Data[index - 1].subjects!) {
      subjectList.add(s);
    }

    return Scaffold(
        appBar: AppBar(title: Text(subjectName)),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: subjectList.map((field) {
            return SubjectCard(field.toString(), Colors.white30);
          }).toList(),
        ));
  }
}
