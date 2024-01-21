import 'package:flutter/material.dart';
import 'package:notesapp/Widgets/custom_app_bar.dart';
import 'package:notesapp/Widgets/custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(),
          SizedBox(
            height: 20,
          ),
          CustomNoteItem(),
        ]),
      ),
    );
  }
}
