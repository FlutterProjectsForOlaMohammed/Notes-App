import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/Widgets/custom_app_bar.dart';
import 'package:notesapp/Widgets/custom_text_form_field.dart';
import 'package:notesapp/Widgets/notes_list_view.dart';
import 'package:notesapp/cubits/Show%20Notes%20Cubit/show_notes_cubit.dart';
import 'package:notesapp/cubits/Show%20Notes%20Cubit/show_notes_state.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<ShowNotesCubit>(context).showAllNotes();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(children: [
        const SizedBox(
          height: 50,
        ),
        CustomAppBar(
          title: "Notes",
          icon: Icons.search,
          onTap: () {},
        ),
        const SizedBox(
          height: 15,
        ),
        const NotesListView()
      ]),
    );
  }
}

class SearchForNote extends StatelessWidget {
  const SearchForNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: const CustomTextFormField(
            hintText: "Search For a Note ", maxLines: 1),
      ),
    );
  }
}
