part of 'notes_cubit_cubit.dart';

@immutable
abstract class NotesCubitState {}

class NotesCubitInitial extends NotesCubitState {}

class NotescubitLoading extends NotesCubitState {}

class NotesCubitSuccsess extends NotesCubitState {
  final List<NoteModel> notes;

  NotesCubitSuccsess(this.notes);
  
}

class NotesCubitFaliure extends NotesCubitState {
  final String errmessage;
  NotesCubitFaliure({required this.errmessage});
}
