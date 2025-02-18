import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/simple_bloc_observer.dart';

import 'package:note_app/views/notes_view.dart';

import 'constants.dart';
import 'cubit/add_note_cubit/add_note_cubit.dart';
import 'models/note_model.dart';

void main() async{
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();

  await Hive.openBox(kNotesBox);

  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}
class NotesApp extends StatelessWidget {
  const NotesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddNoteCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.grey.shade900,
          fontFamily: 'Poppins',
        ),
        home: const NotesView(),
      ),
    );
  }
}






