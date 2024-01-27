import 'package:flutter/material.dart';
import 'package:notesapp/Widgets/custom_text_form_field.dart';

class SearchForNote extends StatelessWidget {
  const SearchForNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: (CustomTextFormField(hintText: "Search For a Note", maxLines: 2)),
    );
  }
}
