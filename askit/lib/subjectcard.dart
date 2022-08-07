import 'package:flutter/material.dart';

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
      child: InkWell(
        onTap: () => selectSubject(context),
        splashColor: Colors.greenAccent,
        child: Expanded(
          child: Card(
            child: Container(
              child: Row(
                children: [
                  Text(subject),
                  Text(
                    "Tap to explore",
                    textScaleFactor: 0.5,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
