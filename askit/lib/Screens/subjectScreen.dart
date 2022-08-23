import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../data.dart';
import 'package:flutter/material.dart';

class SubjectScreen extends StatelessWidget {
  // const SubjectScreen({Key? key}) : super(key: key);

  final subjectList = <String>[];

  init() {
    getLists();
  }

  void getLists() async {
    print("function has ran");
    for (int i = 0; i < Data.length; i++) {
      for (int j = 0; j < Data[i].subjects.topics.length; j++) {
        subjectList.add(Data[i].subjects.topics[j]);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    init();
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: subjectList.map((subject) {
        return Text(subject);
      }).toList(),
    );
  }
}
