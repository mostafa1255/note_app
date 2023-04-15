import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Widgets/Custom_buttom.dart';
import 'package:note_app/Widgets/Custom_textField.dart';
import 'package:note_app/cubits/Add_note_cubit/add_note_cubit.dart';
import 'package:note_app/models/Note_Model.dart';
import 'package:intl/intl.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomTextField(
            onsaved: (value) {
              title = value;
            },
            hinttext: 'Title',
            maxsize: 1,
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            onsaved: (value) {
              print(value);
              subtitle = value;
            },
            hinttext: 'Content',
            maxsize: 4,
          ),
          const SizedBox(
            height: 40,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButtom(
                isloading: state is AddNoteLoading ? true : false,
                ontap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    var currentDate = DateTime.now();
                    var FormattedDate = DateFormat.yMd().format(currentDate);

                    var noteModel = NoteModel(
                        title: title!,
                        subtitle: subtitle!,
                        data: FormattedDate,
                        color: Colors.blue.value);

                    BlocProvider.of<AddNoteCubit>(context).AddNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
