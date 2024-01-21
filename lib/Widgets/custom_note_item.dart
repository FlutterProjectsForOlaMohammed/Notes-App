import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color,
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 8),
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                "Flutter tips",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.normal,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  "Build Your Career With Tharwat Samy",
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 20,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(
                "May 21,2022",
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 16,
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
/*
 Another Soluation For Note Item Shape 
-------------------------------------------
Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.amber[100],
        ),
        child: const Padding(
          padding:
              EdgeInsets.only(left: 28.0, right: 28.0, top: 16, bottom: 24),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    "Flutter tips",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 26,
                )
              ],
            ),
            Text(
              "Build Your Career With Tharwat Samy",
              style: TextStyle(
                color: Color.fromARGB(255, 111, 111, 111),
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "May 21,2022",
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color.fromARGB(255, 111, 111, 111),
                fontSize: 16,
              ),
            ),
          ]),
        ),
      ),
    )

 */
/*
--------------------------------------------------------
Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.amber[100],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 8),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text(
              "Flutter tips",
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.normal,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                "Build Your Career With Tharwat Samy",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 20,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
                size: 24,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Text(
              "May 21,2022",
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 16,
              ),
            ),
          )
        ]),
      ),
    )


 */