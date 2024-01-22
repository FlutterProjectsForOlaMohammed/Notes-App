import 'package:flutter/material.dart';
import 'package:notesapp/Constants.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: IconButton(
        onPressed: () {},
        icon: const Text(
          "Add",
          style: TextStyle(
              color: Color(0xff1e1e1e),
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: kPrimaryColor,
            shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(23))),
      ),
    );
  }
}
