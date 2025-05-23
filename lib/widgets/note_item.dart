import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/swipe_note_item.dart';

class NoteItem extends StatelessWidget {
  final NoteModel note;
  const NoteItem({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return SwipeNoteItem(
      note: note,
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.only(top: 16, bottom: 16, right: 16),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.only(left: 16),
              title: Text(
                note.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(note.subtitle,
                    style: TextStyle(
                      color: Colors.black.withValues(alpha: .5),
                      fontSize: 15,
                    )),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                note.date,
                style: TextStyle(color: Colors.black.withValues(alpha: .5)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
