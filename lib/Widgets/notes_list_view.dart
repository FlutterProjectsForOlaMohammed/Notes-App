import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/Widgets/custom_note_item.dart';
import 'package:notesapp/cubits/Show%20Notes%20Cubit/show_notes_cubit.dart';
import 'package:notesapp/cubits/Show%20Notes%20Cubit/show_notes_state.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<ShowNotesCubit, ShowNotes>(
        builder: (context, state) {
          List? notes = BlocProvider.of<ShowNotesCubit>(context).notes;
          return ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(vertical: 16),
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return CustomNoteItem(
                  note: notes[index],
                );
              });
        },
      ),
    );
  }
}
