import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cuibts/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cuibts/add_note_cubit/add_note_state.dart';

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
        child: BlocBuilder<AddNoteCubit, AddNoteState>(
          builder: (context, state) {
            if (state is AddNoteloading) {
              return SizedBox(
                height: 30,
                width: 30,
                child: CircularProgressIndicator(
                  color: Colors.black,
                ),
              );
            } else {
              return Text(
                "Add",
                style: TextStyle(color: Colors.black, fontSize: 20),
              );
            }
          },
        ),
      ),
    );
  }
}
