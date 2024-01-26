import 'package:flutter/material.dart';
import 'package:notesapp/Models/note_model.dart';
import 'package:notesapp/Widgets/edit_note_item_body.dart';

class EditNoteItemView extends StatelessWidget {
  const EditNoteItemView({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteItemBody(
        note: note,
      ),
    );
  }
}
