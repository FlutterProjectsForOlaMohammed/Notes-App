import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:notesapp/Widgets/custom_add_button.dart';
import 'package:notesapp/Widgets/custom_text_form_field.dart';

class ShowModalBottomSheet extends StatefulWidget {
  const ShowModalBottomSheet({
    super.key,
  });

  @override
  State<ShowModalBottomSheet> createState() => _ShowModalBottomSheetState();
}

class _ShowModalBottomSheetState extends State<ShowModalBottomSheet> {
  String? title, subTitle;
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: ListView(
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
            height: 100,
          ),
          CustomAddButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              }
            },
          )
        ],
      ),
    );
  }
}
// Spacer --> for expand 
// SingleChildScrollView --> make Column Shrink its Childern 
// so they Not Suitable together
