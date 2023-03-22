part of 'add_note_cubit.dart';

@immutable
abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccsess extends AddNoteState {}

class AddNoteFaliure extends AddNoteState {
  final String errmessage;

  AddNoteFaliure(this.errmessage);
}
