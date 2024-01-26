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
      padding: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SizedBox(
        height: 43,
        child: GestureDetector(
          onTap: onPressed,
          child: Container(
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(23),
            ),
            width: MediaQuery.of(context).size.width,
            child: (isLoading)
                ? const Center(
                    child: SizedBox(
                      width: 24,
                      height: 24,
                      child: CircularProgressIndicator(
                        color: Colors.black,
                      ),
                    ),
                  )
                : const Center(
                    child: Text(
                      "Add",
                      style: TextStyle(
                          color: Color(0xff1e1e1e),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
