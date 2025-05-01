
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button%20.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomTextField(
            hintText: "Title",
            onsaved: (value) {
              title = value;
            },
          ),
          SizedBox(
            height: 10,
          ),
          CustomTextField(
            hintText: "Content",
            maxLines: 5,
            onsaved: (value) {
              subTitle = value;
            },
          ),
          SizedBox(
            height: 40,
          ),
          CustomButton(
            ontap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
            },
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
