
import 'package:flutter/material.dart';
import 'package:note_app/widget/AddNote/add_form_note.dart';

class ShowModelBottomSheet extends StatelessWidget {
  const ShowModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding:  EdgeInsets.only(bottom:MediaQuery.of(context).viewInsets.bottom ),

          child:  SingleChildScrollView(child:AddNoteForm()),
        ); }}


