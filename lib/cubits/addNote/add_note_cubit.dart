import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constants/constants.dart';
import 'package:note_app/models/note_model.dart';
part'add_note_states.dart';
class AddNoteCubit extends Cubit<NoteStates>{

  AddNoteCubit():super(initialAddNoteStates());
  addNote(NoteModel note)async
  {
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