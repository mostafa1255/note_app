import 'package:flutter/material.dart';
import 'package:note_app/Widgets/Custom_icon_search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 90,
        ),
        Text(
          'Notes',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        Spacer(),
        customSearchicon()
      ],
    );
  }
}
