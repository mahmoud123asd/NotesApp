import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  final void Function()? ontap;
  const CustomButton({super.key, this.ontap});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      minWidth: MediaQuery.of(context).size.width,
      height: 45,
      onPressed: ontap,
      color: kPrimaryColor,
      child: Center(
        child: Text(
          "Add",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
    );
  }
}
