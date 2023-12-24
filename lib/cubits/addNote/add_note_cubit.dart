import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constants/constants.dart';
import 'package:note_app/models/note_model.dart';
part'add_note_states.dart';
class AddNoteCubit extends Cubit<AddNoteStates>{
  AddNoteCubit():super(initialAddNoteStates());
 Color color=Colors.white;
addNote(NoteModel note)async
  {
    note.color=color.value;
    emit(LoadingAddNoteStates());
    try{
   var notesbox=  Hive.box<NoteModel>(keybox);

    await notesbox.add(note);
      emit(SuccessAddNoteStates());
    }
    catch(e){
      emit(FailureAddNoteStates(e.toString()));
    }
  }
}