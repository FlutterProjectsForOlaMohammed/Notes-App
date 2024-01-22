import 'package:flutter/material.dart';
import 'package:notesapp/Constants.dart';
import 'package:notesapp/Widgets/build_border_for_text_form_field.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      required this.maxLines,
      this.heightHintText = 1});
  final String hintText;
  final int maxLines;
  final double heightHintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        cursorColor: Colors.grey,
        maxLines: maxLines,
        decoration: InputDecoration(
            focusedBorder: BuildBorderForTextFormField(),
            enabledBorder: BuildBorderForTextFormField(),
            border: BuildBorderForTextFormField(),
            hintText: hintText,
            hintStyle: TextStyle(
              height: heightHintText,
              color: kPrimaryColor,
            )),
      ),
    );
  }
}
