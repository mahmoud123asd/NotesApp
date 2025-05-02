import 'package:flutter/material.dart';
import 'package:notes_app/widgets/color_item.dart';

class ColorListView extends StatelessWidget {
  const ColorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      padding: EdgeInsets.only(bottom: 15),
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return ColorItem();
      },
    );
  }
}
