import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cuibts/add_note_cubit/add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState>
{
  AddNoteCubit():super(AddNoteInitial());
  
}