import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/Widgets/notes_view_body.dart';
import 'package:notesapp/Widgets/show_modal_Bottom_sheet.dart';
import 'package:notesapp/cubits/Show%20Notes%20Cubit/show_notes_cubit.dart';

class NotesAppView extends StatelessWidget {
  const NotesAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black.withOpacity(0.6),
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (context) {
                return const ShowModalBottomSheet();
              });
        },
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
