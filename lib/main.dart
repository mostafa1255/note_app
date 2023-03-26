import 'package:flutter/material.dart';

import 'package:hive_flutter/adapters.dart';
import 'package:note_app/Constants.dart';
import 'package:note_app/models/Note_Model.dart';
import 'package:note_app/view/notes_view.dart';

void main() async {
  await Hive.initFlutter();

  await Hive.openBox(knotesbox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const First());
}

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: NotesView(),
    );
  }
}
