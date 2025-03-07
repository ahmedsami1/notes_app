import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';

import 'custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });

  static const List<Color> colors = [
    Color(0xFFFFE082), // Soft Amber
    Color(0xFFFFAB91), // Warm Peach
    Color(0xFFFFCDD2), // Blush Pink
    Color(0xFFB2DFDB), // Mint Blue
    Color(0xFF81D4FA), // Sky Blue
    Color(0xFFD1C4E9), // Soft Lavender
    Color(0xFFFFF59D), // Pastel Yellow
    Color(0xFFA5D6A7), // Light Green Tea
    Color(0xFFFFCCBC), // Pale Coral
    Color(0xFFCE93D8), // Light Orchid
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes ?? [];
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ListView.builder(
              itemCount: notes.length,
              padding: EdgeInsets.zero,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) =>
                  NoteItem(
                    color: colors[index],
                    note: notes[index],
                  ),

            ),
          ),
        );
      },
    );
  }
}