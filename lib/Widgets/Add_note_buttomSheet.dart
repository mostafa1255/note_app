import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/Widgets/Add_note_form.dart';
import 'package:note_app/cubits/Add_note_cubit/add_note_cubit.dart';

class butomSheet extends StatelessWidget {
  butomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFaliure) {
            print('Faliure ${state.errmessage}');
          }
          if (state is AddNoteSuccsess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          
          return   AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: AddNoteForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
