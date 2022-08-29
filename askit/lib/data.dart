import 'package:askit/models/fields.dart';
import 'package:flutter/material.dart';
import './models/subjects.dart';
import './models/fields.dart';

var Data = [
  Fields(
    name: "Math",
    subjects: Subjects(
        topics: ["Trigonometry", "Calculus", "Geometry"],
        teachers: ["Sir Yasir", "Hehehhe"]),
  ),
  Fields(
    name: "English",
    subjects: Subjects(
        topics: ["Grammer", "Hehehahah"], teachers: ["Sir Yasir", "Hehehhe"]),
  ),
  Fields(
    name: "Engineering",
    subjects: Subjects(
        topics: ["Fluid", "Ducks", "Geometry"],
        teachers: ["Sir Yasir", "Hehehhe"]),
  ),
  Fields(
    name: "Computer",
    subjects: Subjects(
        topics: ["Compiler Conctruction", "DSA", "DLD"],
        teachers: ["Sir Yasir", "Hehehhe"]),
  ),
];

final subjectList = <String>[];
void getLists() {
  for (int i = 0; i < Data.length; i++) {
    for (int j = 0; j < Data[i].subjects.topics.length; j++) {
      subjectList.add(Data[i].subjects.topics[j]);
    }
  }
}

void getFieldList() {
  for (int i = 0; i < Data.length; i++) {
    print(Data[i].name);
  }
}
