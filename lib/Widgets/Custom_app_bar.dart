import 'package:flutter/material.dart';
import 'package:note_app/Widgets/Custom_icon_search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 90,
        ),
        Text(
          '$title',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        Spacer(),
        customSearchicon(
          icon: icon,
        )
      ],
    );
  }
}
