import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 18.0),
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
            CustomButton(),
        
          ],
        ),
      ),
    );
  }
}



