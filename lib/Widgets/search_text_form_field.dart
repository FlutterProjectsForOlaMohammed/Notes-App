import 'package:flutter/material.dart';
import 'package:notesapp/Widgets/build_border_for_text_form_field.dart';

import '../Constants.dart';

class SearchNoteTextFormField extends StatelessWidget {
  const SearchNoteTextFormField({super.key, this.onSubmitted});
  final void Function(String)? onSubmitted;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: onSubmitted,
      cursorColor: Colors.grey,
      maxLines: 1,
      decoration: InputDecoration(
          focusedBorder: buildBorderForTextFormField(),
          enabledBorder: buildBorderForTextFormField(),
          border: buildBorderForTextFormField(),
          hintText: "Search For a Note",
          hintStyle: const TextStyle(
            color: kPrimaryColor,
          )),
    );
  }
}
