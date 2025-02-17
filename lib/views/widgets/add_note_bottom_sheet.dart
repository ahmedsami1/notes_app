import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(height: 25.0),
          CustomFormTextField(
            hintText: 'Title',
            labelText: 'Title',
            onChanged: (value) {},
          ),
          SizedBox(height: 16.0),
          CustomFormTextField(
            hintText: 'Content',
            labelText: 'Content',
            onChanged: (value) {},
            keyboardType: TextInputType.multiline,
            contentPadding: 60,
          ),

        ],
      ),
    );
  }
}

