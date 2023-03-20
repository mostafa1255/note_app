import 'package:flutter/material.dart';
import 'package:note_app/Widgets/Custom_note_item.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key});
final data=const[];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(4.0),
        child: const NotesItem(),
      );
    });
  }
}
