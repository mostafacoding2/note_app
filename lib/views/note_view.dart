import 'package:flutter/material.dart';
import 'package:note_app/widget/body_note-view.dart';
class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

body: BodyNoteView(),


    );
  }
}
