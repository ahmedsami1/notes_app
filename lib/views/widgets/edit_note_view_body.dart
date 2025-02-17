import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';

import 'custom_text_field.dart';

class EditeNoteViewBody extends StatelessWidget {
  const EditeNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CustomAppBar(title: 'Edit Note', icon: Icons.check,),
              SizedBox(height: 50.0),
              CustomFormTextField(
                hintText: 'Title',
                onChanged: (value) {},
              ),
              SizedBox(height: 16.0),
              CustomFormTextField(
                hintText: 'Content',
                onChanged: (value) {},
                maxLine: 5,
              ),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
