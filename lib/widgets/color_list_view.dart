import 'package:flutter/material.dart';
import 'package:notes_app/widgets/color_item.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int? currentIndex;
  List<Color> colors = [
    Color(0xFF2196F3),
    Color(0xFF00E6A4),
    Color(0xFF9C27B0),
    Color(0xFFFF9800),
    Color(0xFF009688),
    Color(0xFFE91E63),
    Color(0xFFFFEB3B),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 6),
              child: ColorItem(
                color: colors[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
