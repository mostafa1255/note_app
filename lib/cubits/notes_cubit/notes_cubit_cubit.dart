import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';
import 'package:note_app/Constants.dart';
import 'package:note_app/models/Note_Model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());
  List<NoteModel>? notes;
  fetchallNotes() {
    var notesBox = Hive.box<NoteModel>(knotesbox);

    notes = notesBox.values.toList();
    emit(NotesCubitSuccsess());
  }
}
