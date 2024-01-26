import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notesapp/Constants.dart';
import 'package:notesapp/cubits/Show%20Notes%20Cubit/show_notes_state.dart';

class ShowNotesCubit extends Cubit<ShowNotes> {
  ShowNotesCubit() : super(NotesInitial());
  List notes = [];
  showAllNotes() {
    notes = Hive.box(kNotesBox).values.toList();
  }
}
