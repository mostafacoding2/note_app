import 'package:flutter/material.dart';
import 'package:note_app/customs/custom_icon.dart';
import 'package:note_app/widget/AddNote/add_note_floating_actionButton.dart';
import 'package:note_app/widget/body_note-view.dart';
class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: CustomIcon(icon: Icons.add, color: Colors.white, size: 30),
          backgroundColor:Colors.cyan ,
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(90)),
          onPressed: ()
          {
            showModalBottomSheet(context: context, builder:(context)=> const ShowModelBottomSheet());
          }),


      body: const  BodyNoteView(),


    );
  }
}
