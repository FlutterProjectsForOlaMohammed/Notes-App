import 'package:flutter/material.dart';
import 'package:notesapp/Constants.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton(
      {super.key, required this.onPressed, this.isLoading = false});
  final VoidCallback onPressed;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: 24,
        height: 43,
        child: IconButton(
          onPressed: onPressed,
          icon: (isLoading)
              ? const SizedBox(
                  height: 24,
                  width: 24,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
              : const Text(
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
      ),
    );
  }
}
