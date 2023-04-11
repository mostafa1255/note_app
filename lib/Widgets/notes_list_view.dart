import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Widgets/Custom_note_item.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:note_app/models/Note_Model.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key});
  final data = const [];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubitCubit, NotesCubitState>(
      builder: (context, state) {
      List <NoteModel> notes=BlocProvider.of<NotesCubitCubit>(context).notes!;
        return ListView.builder(

itemCount: notes.length,

            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: const NotesItem(),
              );
            });
      },
    );
  }
}
