import 'package:flutter/material.dart';

import 'package:note_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NotesViewBody(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFFFFF59D),
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



