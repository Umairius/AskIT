import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../data.dart';
import 'package:flutter/material.dart';
import 'subjectScreen.dart';

class FieldScreen extends StatelessWidget {
  // const SubjectScreen({Key? key}) : super(key: key);

  final subjectList = <String>[];

  void getFieldList() {
    for (int i = 0; i < Data.length; i++) {
      subjectList.add(Data[i].name.toString());
    }
  }

  init() {
    getFieldList();
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
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SubjectScreen(subject)),
            );
          },
          child: Container(
            height: 10,
            width: 10,
            color: Colors.red.shade400,
            child: Center(
              child: Text(subject),
            ),
          ),
        );
      }).toList(),
    );
  }
}
