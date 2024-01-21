import 'package:flutter/material.dart';
import 'package:notesapp/Widgets/notes_view_body.dart';

class NotesAppView extends StatelessWidget {
  const NotesAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black.withOpacity(0.6),
        onPressed: () {},
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
