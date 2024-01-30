import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notesapp/Constants.dart';
import 'package:notesapp/Models/note_model.dart';
import 'package:notesapp/cubits/Add%20Note%20Cubit/add_note_states.dart';

class AddNoteCubit extends Cubit<AddNotes> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote({required NoteModel note}) async {
    emit(AddNoteLoading());
    await Future.delayed(const Duration(seconds: 1));
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      await noteBox.add(note);
      emit(AddNoteSuccess());
    } on Exception catch (e) {
      emit(AddNoteFailure(errMessage: e.toString()));
    }
  }
}
