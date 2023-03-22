import 'package:flutter/material.dart';
import 'package:note_app/Widgets/Edit_view_body.dart';
import 'package:note_app/view/Edit_note_view.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditView();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(left: 15, top: 16, bottom: 30),
        width: 600,
        decoration: BoxDecoration(
            color: Color(0xffFFCD7A), borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Flutter tips',
                style: TextStyle(fontSize: 32, color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  'Build your Career with  Mostafa yasser',
                  style: TextStyle(color: Colors.black.withOpacity(0.4)),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 35,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 10),
              child: Text(
                'May 21,2022',
                style: TextStyle(color: Colors.black.withOpacity(0.4)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
