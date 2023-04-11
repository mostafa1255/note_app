import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Widgets/Custom_app_bar.dart';
import 'package:note_app/Widgets/Custom_note_item.dart';
import 'package:note_app/Widgets/notes_list_view.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit_cubit.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubitCubit>(context).fetchallNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
      child: Column(
        children: const [
          CustomAppBar(title: 'Notes', icon: Icons.search),
          Expanded(child: NotesListview())
        ],
      ),
    );
  }
}
