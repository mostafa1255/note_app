import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/Constants.dart';
import 'package:note_app/models/Note_Model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());

  fetchallNotes() {
    emit(NotescubitLoading());
    try {
      var notesBox = Hive.box<NoteModel>(knotesbox);

      List<NoteModel> notes = notesBox.values.toList();

      emit(NotesCubitSuccsess(notes));
    } on Exception catch (e) {
      emit(NotesCubitFaliure(
        errmessage: e.toString(),
      ));
    }
  }
}
