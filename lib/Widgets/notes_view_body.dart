import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/Widgets/custom_app_bar.dart';
import 'package:notesapp/Widgets/notes_list_view.dart';
import 'package:notesapp/Widgets/search_text_form_field.dart';
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
      child: BlocBuilder<ShowNotesCubit, ShowNotes>(
        builder: (context, state) {
          if (state is SearchForNoteState) {
            return Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                CustomAppBar(
                  title: "Notes",
                  icon: Icons.search,
                  onTap: () {
                    BlocProvider.of<ShowNotesCubit>(context).searchForNotes();
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                SearchNoteTextFormField(
                  onSubmitted: (value) {
                    BlocProvider.of<ShowNotesCubit>(context)
                        .returnNotesAfterSearching(value);
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                const NotesListView(),
              ],
            );
          } else {
            return Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                CustomAppBar(
                  title: "Notes",
                  icon: Icons.search,
                  onTap: () {
                    BlocProvider.of<ShowNotesCubit>(context).searchForNotes();
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                const NotesListView(),
              ],
            );
          }
        },
      ),
    );
  }
}
