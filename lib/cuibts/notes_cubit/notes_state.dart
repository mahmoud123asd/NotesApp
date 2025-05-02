import 'package:notes_app/models/note_model.dart';

class NotesState {}

class NoteInitial extends NotesState {}

class NoteSuccess extends NotesState {
  final List<NoteModel> notes;
  NoteSuccess(this.notes);
}

