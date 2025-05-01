import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button%20.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CustomTextField(
              hintText: "Title",
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: "Content",
              maxLines: 5,
            ),
            SizedBox(
              height: 40,
            ),
            CustomButton(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
