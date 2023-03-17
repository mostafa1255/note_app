import 'package:flutter/material.dart';
import 'package:note_app/Widgets/Custom_app_bar.dart';
import 'package:note_app/Widgets/Custom_note_item.dart';
import 'package:note_app/Widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
      child: Column(
        children: [CustomAppBar(), Expanded(child: NotesListview())],
      ),
    );
  }
}


