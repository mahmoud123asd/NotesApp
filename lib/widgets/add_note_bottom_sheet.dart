import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cuibts/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cuibts/add_note_cubit/add_note_state.dart';
import 'package:notes_app/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            print("failed");
          } else if (state is AddNoteSuccess) {
            Navigator.of(context).pop();
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
              inAsyncCall: (state is AddNoteloading),
              child: SingleChildScrollView(
                child: AddNoteForm(),
              ));
        },
      ),
    );
  }
}
