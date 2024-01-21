import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.search),
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white.withOpacity(0.09),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
    );
  }
}
