import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:note_app/views/notes_view.dart';

import 'constants.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  runApp(const NotesApp());
}
class NotesApp extends StatelessWidget {
  const NotesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.grey.shade900,
        fontFamily: 'Poppins',
      ),
      home: const NotesView(),
    );
  }
}






