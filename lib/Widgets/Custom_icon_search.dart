import 'package:flutter/material.dart';

class customSearchicon extends StatelessWidget {
  const customSearchicon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.2),
          borderRadius: BorderRadius.circular(16)),
      child: Center(
        child: Icon(icon),
      ),
    );
  }
}
