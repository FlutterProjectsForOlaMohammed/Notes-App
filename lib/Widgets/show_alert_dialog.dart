import 'package:flutter/material.dart';

class showAlertDialog extends StatelessWidget {
  const showAlertDialog({
    super.key,
    required this.title,
    required this.subTitle,
    required this.backgroundColor,
  });
  final String title, subTitle;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titleTextStyle: TextStyle(color: backgroundColor),
      contentTextStyle: TextStyle(color: backgroundColor),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      title: Text(title),
      content: Text(subTitle),
    );
  }
}
