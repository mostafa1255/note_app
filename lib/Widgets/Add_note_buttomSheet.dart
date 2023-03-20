import 'package:flutter/material.dart';
import 'package:note_app/Widgets/Custom_textField.dart';

class butomSheet extends StatelessWidget {
  const butomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CustomTextField(
              hinttext: 'Title',
              maxsize: 1,
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextField(
              hinttext: 'Content',
              maxsize: 4,
            ),
          ],
        ),
      ),
    );
  }
}
