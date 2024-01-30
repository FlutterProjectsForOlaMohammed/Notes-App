import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notesapp/Constants.dart';
import 'package:notesapp/Models/note_model.dart';
import 'package:notesapp/cubits/Show%20Notes%20Cubit/show_notes_state.dart';

class ShowNotesCubit extends Cubit<ShowNotes> {
  ShowNotesCubit() : super(NotesInitial());
  List notes = [];
  bool open = false;
  showAllNotes() {
    notes = Hive.box<NoteModel>(kNotesBox).values.toList();
    emit(NotesSuccess());
  }

  searchForNotes() {
    if (open == false) {
      open = true;
      emit(SearchForNoteState());
    } else {
      open = false;
      emit(CloseSearchForNoteState());
    }
  }

  returnNotesAfterSearching(String? keyWord) {
    List<NoteModel> returnedData =
        Hive.box<NoteModel>(kNotesBox).values.toList();
    List<NoteModel> data = [];
    if (keyWord != null) {
      for (int i = 0; i < returnedData.length; i++) {
        if (returnedData[i].title.contains(keyWord) ||
            returnedData[i].subTitle.contains(keyWord)) {
          data.add(returnedData[i]);
        }
      }
    }
    if (data.isNotEmpty) {
      notes.clear();
      notes = data;
      emit(SearchForNoteState());
    } else {
      showAllNotes();
    }
  }
}
