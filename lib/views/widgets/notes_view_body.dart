import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0,top: 16.0),
      child: Column(
        children: [
          CustomAppBar(),
          SizedBox(height: 20.0,),
          NoteItem(),
        ],
      ),
    );
  }
}

