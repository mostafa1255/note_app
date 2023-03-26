import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/Constants.dart';
import 'package:note_app/models/Note_Model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  AddNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(knotesbox);
      await notesBox.add(note);
      emit(AddNoteSuccsess());
    } on Exception catch (e) {
      emit(AddNoteFaliure(e.toString()));
    }
  }
}
