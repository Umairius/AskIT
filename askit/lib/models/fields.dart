// We create a datastructure in this file which will be imported into the main file.
// The datastructure will encapsulate a field and a subject in that field

import 'package:flutter/cupertino.dart';

class Fields {
  final String? name;
  final List<String>? subjects;
  final Color color;

  const Fields(
      {@required this.name, @required this.subjects, required this.color});
}
