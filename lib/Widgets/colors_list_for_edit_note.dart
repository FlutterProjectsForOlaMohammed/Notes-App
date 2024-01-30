import 'package:flutter/material.dart';
import 'package:notesapp/Constants.dart';
import 'package:notesapp/Models/note_model.dart';
import 'package:notesapp/Widgets/colors_List_for_add_note.dart';

class EditNoteColor extends StatefulWidget {
  const EditNoteColor({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteColor> createState() => _EditNoteColorState();
}

class _EditNoteColorState extends State<EditNoteColor> {
  late int currentIndex;
  @override
  void initState() {
    super.initState();
    currentIndex = notesColor.indexOf(Color(widget.note.color));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.builder(
          itemCount: notesColor.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = notesColor[index].value;
                widget.note.save();
                setState(() {});
              },
              child: ColorItem(
                color: notesColor[index],
                isActive: (currentIndex == index),
              ),
            );
          }),
    );
  }
}
