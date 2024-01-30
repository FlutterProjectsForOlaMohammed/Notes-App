import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notesapp/Models/note_model.dart';
import 'package:notesapp/Widgets/colors_List_for_add_note.dart';
import 'package:notesapp/Widgets/custom_add_button.dart';
import 'package:notesapp/Widgets/custom_text_form_field.dart';
import 'package:notesapp/cubits/Add%20Note%20Cubit/add_note_cubit.dart';
import 'package:notesapp/cubits/Add%20Note%20Cubit/add_note_states.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  String? title, subTitle;
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            CustomTextFormField(
              hintText: "Title",
              maxLines: 1,
              save: (value) {
                title = value;
              },
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextFormField(
              hintText: "Content",
              maxLines: 5,
              heightHintText: 8,
              save: (value) {
                subTitle = value;
              },
            ),
            const SizedBox(
              height: 25,
            ),
            const SizedBox(height: 48, child: ColorsListView()),
            const SizedBox(
              height: 15,
            ),
            BlocBuilder<AddNoteCubit, AddNotes>(
              builder: (context, state) {
                return CustomAddButton(
                  isLoading: state is AddNoteLoading ? true : false,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      DateTime now = DateTime.now();
                      NoteModel note = NoteModel(ColorsListView.selectedColor,
                          title: title!,
                          subTitle: subTitle!,
                          date: (DateFormat.yMMMMd().format(now)).toString());
                      BlocProvider.of<AddNoteCubit>(context)
                          .addNote(note: note);
                    }
                  },
                );
              },
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
