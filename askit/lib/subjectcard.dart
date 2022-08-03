import 'package:flutter/material.dart';
import 'colorpallete.dart';
import "dart:math";

class SubjectCard extends StatelessWidget {
  // const SubjectCard({Key? key}) : super(key: key);
  String subject;
  static int colorIndex = 0;
  SubjectCard(this.subject);

  void selectSubject(BuildContext ctx) {
    print(subject + " Tapped");
    print(ctx.size);
  }

  void deleteSubject(BuildContext ctx) {}

  @override
  Widget build(BuildContext context) {
    colorIndex = colorIndex + 1;
    if (colorIndex > 4) {
      colorIndex = 1;
    }
    print(colorIndex);
    return AspectRatio(
      aspectRatio: 1,
      child: InkWell(
        onTap: () => selectSubject(context),
        splashColor: Colors.cyan,
        child: Container(
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            color: colors[colorIndex],
            child: Center(
              child: Text(subject,
                  textScaleFactor: 1.5,
                  style: TextStyle(backgroundColor: Colors.white10)),
            ),
          ),
        ),
      ),
    );
  }
}
