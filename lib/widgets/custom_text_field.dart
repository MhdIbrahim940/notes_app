import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';


class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint,  this.maxLines = 1, this.onSaved});

   final String hint;
   final int maxLines;
   final Function(String?)? onSaved;

  @override
  Widget build(BuildContext context){
    return  TextFormField(
      onSaved: onSaved,

      validator: (value) {
        if (value?.isEmpty ?? true){
          return 'Field is required';
        } else{
          return null;
        }

      },
      cursorColor: kPrimaryColor, 
      maxLines: maxLines,

      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
          color: kPrimaryColor,
        ),
        border: buildBorder(myWhite),
        enabledBorder: buildBorder(myWhite), 
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }
}


OutlineInputBorder buildBorder( Color color) 
{
  return OutlineInputBorder
        (
        borderRadius: BorderRadius.circular(16),
        borderSide:  BorderSide(
          color: color ),
      );
}