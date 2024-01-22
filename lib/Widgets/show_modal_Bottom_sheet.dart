import 'package:flutter/material.dart';
import 'package:notesapp/Widgets/custom_add_button.dart';
import 'package:notesapp/Widgets/custom_text_form_field.dart';

class ShowModalBottomSheet extends StatelessWidget {
  const ShowModalBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SizedBox(
          height: 50,
        ),
        CustomTextFormField(hintText: "Title", maxLines: 1),
        SizedBox(
          height: 15,
        ),
        CustomTextFormField(
          hintText: "Content",
          maxLines: 5,
          heightHintText: 8,
        ),
        SizedBox(
          height: 100,
        ),
        CustomAddButton()
      ],
    );
  }
}
