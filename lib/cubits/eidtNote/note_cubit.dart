import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constants/constants.dart';
import 'package:note_app/models/note_model.dart';

part'note_states.dart';
class NoteCubit extends Cubit<NoteStates>{
  NoteCubit():super(initialStates());
  List<NoteModel>?notes;
  showNote()
  {
    var notesBox=Hive.box<NoteModel>(keybox);
  notes=  notesBox.values.toList();
    emit(SuccessStates());
  }

}