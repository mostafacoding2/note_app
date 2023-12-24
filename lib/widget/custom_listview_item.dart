import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/eidtNote/note_cubit.dart';
import 'package:note_app/customs/cutom_item_note.dart';
import 'package:note_app/models/note_model.dart';
class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {

    return
        BlocBuilder<NoteCubit,NoteStates>( builder: (BuildContext context, state) {
          List<NoteModel> notes=BlocProvider.of<NoteCubit>(context).notes??[];
      return    ListView.builder(
             itemCount:notes.length ,
              itemBuilder: (context,index){return ItemNote(noteModel: notes[index],);});}
        )  ;
  }
}
