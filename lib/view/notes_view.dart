import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Widgets/Add_note_buttomSheet.dart';
import 'package:note_app/Widgets/Notee_view_body.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit_cubit.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (context) {
                return butomSheet();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}
