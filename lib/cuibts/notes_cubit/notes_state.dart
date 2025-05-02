import 'package:notes_app/models/note_model.dart';

class NotesState {}

class NoteInitial extends NotesState {}

class Noteloading extends NotesState {}

class NoteSuccess extends NotesState {
  final List<NoteModel> notes;
  NoteSuccess(this.notes);
}

class NoteFailure extends NotesState {
  final String errorMessage;

  NoteFailure({required this.errorMessage});
}
