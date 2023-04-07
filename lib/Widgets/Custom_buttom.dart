import 'package:flutter/material.dart';
import 'package:note_app/Constants.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, this.ontap, this.isloading = false});

  final void Function()? ontap;
  final bool isloading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
            color: kprimaryColor, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: isloading
              ? CircularProgressIndicator(
                  color: Colors.green,
                )
              : Text(
                  'Add',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
        ),
      ),
    );
  }
}
