import 'package:flutter/material.dart';

class ShowAlertDialog extends StatelessWidget {
  const ShowAlertDialog({
    super.key,
    required this.title,
    required this.subTitle,
    required this.backgroundColor,
    required this.pressedText,
  });
  final String title, subTitle, pressedText;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titleTextStyle: TextStyle(color: backgroundColor),
      contentTextStyle: TextStyle(color: backgroundColor),
      shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(23)),
      title: Center(
        child: Text(
          title,
          style: const TextStyle(fontSize: 26),
        ),
      ),
      content: Text(subTitle, style: const TextStyle(fontSize: 20)),
      actions: [
        IconButton(
            icon: Text(pressedText, style: const TextStyle(fontSize: 20)),
            onPressed: () {
              Navigator.of(context).pop();
            })
      ],
    );
  }
}
