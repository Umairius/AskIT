import 'package:flutter/material.dart';
import "subjectScreen.dart";

class SubjectCard extends StatelessWidget {
  // const SubjectCard({Key? key}) : super(key: key);
  String subject;
  Color color;

  SubjectCard(this.subject, this.color);

  void selectSubject(BuildContext ctx) {
    print(subject + " Tapped");
    print(ctx.size);
  }

// onTap: () => selectSubject(context),

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white54,
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SubjectScreen(subject),
          ),
        ),
        splashColor: Colors.greenAccent,
        child: Card(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  subject,
                  textScaleFactor: 1.5,
                ),
                Text(
                  "Tap to explore",
                  textScaleFactor: 0.5,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
