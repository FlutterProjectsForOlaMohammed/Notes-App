import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.search,
        size: 28,
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white.withOpacity(0.07),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
    );
  }
}
