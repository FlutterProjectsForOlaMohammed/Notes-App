import 'package:flutter/material.dart';
import 'package:notesapp/Widgets/custom_app_bar.dart';
import 'package:notesapp/Widgets/custom_text_form_field.dart';

class EditNoteItemBody extends StatelessWidget {
  const EditNoteItemBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 24, right: 24, top: 50, bottom: 30),
          child: CustomAppBar(
            title: "Edit Note",
            icon: Icons.check,
          ),
        ),
        CustomTextFormField(
          hintText: "Title",
          maxLines: 1,
          save: (value) {},
        ),
        const SizedBox(
          height: 15,
        ),
        CustomTextFormField(
          save: (value) {},
          hintText: "Content",
          maxLines: 5,
          heightHintText: 8,
        ),
      ],
    );
  }
}
