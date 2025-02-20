import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/models/note_model.dart';

import '../../cubit/add_note_cubit/add_note_cubit.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          SizedBox(height: 18.0),
          CustomFormTextField(
            onSaved: (value) {
              title = value;
            },
            hintText: 'Title',
          ),
          SizedBox(height: 16.0),
          CustomFormTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hintText: 'Content',
            maxLine: 5,
          ),
          SizedBox(height: 16.0),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: BlocProvider
                    .of<AddNoteCubit>(context)
                    .state is AddNoteLoading,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    var noteModel = NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      date: DateTime.now().toString(),
                      color: Colors.blue.hashCode,);
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autoValidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }
}


