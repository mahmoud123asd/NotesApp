import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData icon;
  final void Function()? ontap;
  const CustomIcon({super.key, required this.icon, this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white.withValues(alpha: .05)),
        child: Icon(
          icon,
          size: 28,
        ),
      ),
    );
  }
}
