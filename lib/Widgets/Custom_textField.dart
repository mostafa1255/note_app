import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:note_app/Constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hinttext, this.maxsize = 1});
  final String? hinttext;
  final int maxsize;
  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      maxLines: maxsize,
      cursorColor: kprimaryColor,
      decoration: InputDecoration(
          hintText: '$hinttext',
          hintStyle: TextStyle(color: kprimaryColor),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(kprimaryColor)),
    );
  }

  OutlineInputBorder buildBorder([Color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Color ?? Colors.white));
  }
}
