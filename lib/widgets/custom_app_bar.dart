import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function()? ontap;
  const CustomAppBar({super.key, required this.title, required this.icon, this.ontap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        CustomIcon(
          ontap:ontap ,
          icon: icon,
        )
      ],
    );
  }
}
