import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/Models/note_model.dart';
import 'package:notesapp/cubits/Add%20Note%20Cubit/add_note_states.dart';

class AddNoteCubit extends Cubit<AddNotes> {
  AddNoteCubit() : super(AddNoteInitial());
  void addNote({required NoteModel note}) {}
}
