

import 'package:bloc/bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
   AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note)
  {

  }
}
/*
class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteState() : super(AddNoteInitial());

  addNote(NoteModel note)
  {

  }
}
*/