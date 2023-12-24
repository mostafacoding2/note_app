import 'package:flutter/material.dart';
import 'package:note_app/customs/custom_buton.dart';
import 'package:note_app/customs/custom_textfiled.dart';
class AddNoteForm extends StatefulWidget {
  AddNoteForm({super.key});
  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}
class _AddNoteFormState extends State<AddNoteForm> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
      [
        CustomTextField(hintText:'Title',maxLines: 1, onSaved: (value)
        {
        },),
        CustomTextField(hintText:'content',maxLines: 7,onSaved: (data)
        {
        }, ),
         CustomButon(

              text: 'Add',onTap:()
            {

              },
        )
      ],)
    ;
  }
}
