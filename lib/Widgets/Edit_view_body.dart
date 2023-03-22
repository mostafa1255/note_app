import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:note_app/Widgets/Custom_app_bar.dart';

class EditviewBody extends StatelessWidget {
  const EditviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomAppBar(title: 'Edit Notes',icon: Icons.check),
        ],
      ),
    );
  }
}
