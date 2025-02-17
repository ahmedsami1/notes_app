import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/add_note_bottom_sheet.dart';

import 'package:note_app/views/widgets/notes_view_body.dart';

import '../constants.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
              context: context,
              builder: (context){
                return const AddNoteButtonSheet();
              }
          );
        },
        backgroundColor: kPrimaryColor,
        elevation: 8.0,
        child: Icon(
          Icons.add,
          color: Colors.black87,
          size: 32.0,
        ),
      ),
    );
  }
}




