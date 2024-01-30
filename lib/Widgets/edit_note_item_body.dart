import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/Models/note_model.dart';
import 'package:notesapp/Widgets/colors_list_for_edit_note.dart';
import 'package:notesapp/Widgets/custom_app_bar.dart';
import 'package:notesapp/Widgets/custom_text_form_field.dart';
import 'package:notesapp/Widgets/show_alert_dialog.dart';
import 'package:notesapp/cubits/Show%20Notes%20Cubit/show_notes_cubit.dart';

class EditNoteItemBody extends StatefulWidget {
  const EditNoteItemBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteItemBody> createState() => _EditNoteItemBodyState();
}

class _EditNoteItemBodyState extends State<EditNoteItemBody> {
  String? newtitle, newSubTitle;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 24, right: 24, top: 50, bottom: 30),
          child: CustomAppBar(
            title: "Edit Note",
            icon: Icons.check,
            onTap: () {
              widget.note.title = newtitle ?? widget.note.title;
              widget.note.subTitle = newSubTitle ?? widget.note.subTitle;
              widget.note.save();
              Navigator.pop(context);
              BlocProvider.of<ShowNotesCubit>(context).showAllNotes();
              showDialog(
                  context: context,
                  builder: (context) {
                    return const ShowAlertDialog(
                        title: "Done",
                        subTitle: "Updated Done Successfully",
                        pressedText: "Ok",
                        backgroundColor: Colors.green);
                  });
            },
          ),
        ),
        CustomTextFormField(
          hintText: "Title",
          initial: widget.note.title,
          maxLines: 1,
          onChanged: (value) {
            newtitle = value;
          },
        ),
        const SizedBox(
          height: 15,
        ),
        CustomTextFormField(
          hintText: "Content",
          initial: widget.note.subTitle,
          maxLines: 5,
          heightHintText: 8,
          onChanged: (value) {
            newSubTitle = value;
          },
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
            height: 48,
            child: EditNoteColor(
              note: widget.note,
            )),
      ],
    );
  }
}
