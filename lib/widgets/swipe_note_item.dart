import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class SwipeNoteItem extends StatelessWidget {
  final Widget child;
  final NoteModel note;

  const SwipeNoteItem({super.key, required this.child, required this.note});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(note.title),
      background: Container(
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(16),
        ),
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 20),
        child: Icon(
          Icons.delete,
          color: Colors.white,
          size: 35,
        ),
      ),
      secondaryBackground: Container(
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.circular(16),
        ),
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(right: 20),
        child: Icon(
          Icons.edit,
          color: Colors.white,
          size: 35,
        ),
      ),
      confirmDismiss: (direction) async {
        if (direction == DismissDirection.startToEnd) {
          // Swipe right to delete
          final confirmed = await showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: Text('Delete?'),
              content: Text('Are you sure you want to delete $note?'),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context, false),
                    child: Text('Cancel')),
                TextButton(
                    onPressed: () {
                      note.delete();
                      Navigator.pop(context, true);
                    },
                    child: Text('Delete')),
              ],
            ),
          );
          return confirmed;
        } else {
           Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => EditNoteView(
                  note: note,
                )));
                return false;
        }
      },
      onDismissed: (direction) {
        // Handle deletion
      },
      child: child,
    );
  }
}
