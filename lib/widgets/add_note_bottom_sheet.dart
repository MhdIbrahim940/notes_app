import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_bottom.dart';

import 'custom_text_field.dart';



class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child: 
         SingleChildScrollView(
           child: Column(
            children: [
              SizedBox(
                height: 32,
              ),
              CustomTextField(
                hint: 'Title'
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                maxLines: 5,
                hint: 'Content'
              ),
              SizedBox(
                height: 32,
              ),
              CustomButton(),
               SizedBox(
                height: 16,
              ),
           
            ],
                   ),
         ),

    );
  }
}


