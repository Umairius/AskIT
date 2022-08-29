import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../data.dart';
import 'package:flutter/material.dart';

class SubjectScreen extends StatelessWidget {
  // const SubjectScreen({Key? key}) : super(key: key);

  final String subjectname;

  SubjectScreen(this.subjectname);

  // final subjectList = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 10,
          toolbarHeight: 110,
          titleSpacing: 40,
          title: const Text("Choose your Subject"),
        ),
        body: Text(subjectname));
  }
}
