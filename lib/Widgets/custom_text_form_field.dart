import 'package:flutter/material.dart';
import 'package:notesapp/Constants.dart';
import 'package:notesapp/Widgets/build_border_for_text_form_field.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      required this.maxLines,
      this.heightHintText = 1,
      this.save,
      this.initial,
      this.onChanged});

  final String hintText;
  final int maxLines;
  final double heightHintText;
  final Function(String?)? save;
  final String? initial;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        initialValue: initial,
        onChanged: onChanged,
        onSaved: save,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return "Field is Required";
          }
          return null;
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        cursorColor: Colors.grey,
        maxLines: maxLines,
        decoration: InputDecoration(
            focusedBorder: buildBorderForTextFormField(),
            enabledBorder: buildBorderForTextFormField(),
            border: buildBorderForTextFormField(),
            hintText: hintText,
            hintStyle: TextStyle(
              height: heightHintText,
              color: kPrimaryColor,
            )),
      ),
    );
  }
}
