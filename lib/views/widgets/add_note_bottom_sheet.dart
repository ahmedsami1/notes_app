import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/add_note_cubit/add_note_cubit.dart';

import 'add_note_form.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocListener<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {

            debugPrint('Field ${state.errMessage}');

          }
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
        },
        child:SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: AbsorbPointer(
              absorbing: BlocProvider.of<AddNoteCubit>(context).state is AddNoteLoading,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: AddNoteForm()),
              ),
            ),
          ),
      ),
    );
  }
}


