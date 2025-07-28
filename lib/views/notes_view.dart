import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';
import 'package:notes_app/constants.dart';


class NotesView extends StatelessWidget {
  const NotesView({super.key});
  
  /* ScrollController sc;
   initState(){
    sc = new ScrollController();
    
    super.initState();
   }*/
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: (){
          showModalBottomSheet(
            //controller: sc,
            //isScrollControlled: true,
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context){
           return const AddNoteBottomSheet();
          });
        },
        child: const Icon(Icons.add,
        color: myBlack,
        ),
          ),
      body: const NotesViewBody(),
    );
  }
}
