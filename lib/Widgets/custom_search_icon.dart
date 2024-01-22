import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        icon,
        size: 28,
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white.withOpacity(0.07),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
    );
  }
}
