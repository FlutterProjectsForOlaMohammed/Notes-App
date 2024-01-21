import 'package:flutter/material.dart';
import 'package:notesapp/Constants.dart';
import 'package:notesapp/Widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(vertical: 16),
          itemCount: 29,
          itemBuilder: (context, index) {
            return CustomNoteItem(color: notesColor[index % 12]);
          }),
    );
  }
}
