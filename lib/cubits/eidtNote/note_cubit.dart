import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constants/constants.dart';

part'note_states.dart';
class NoteCubit extends Cubit<NoteStates>{
  NoteCubit():super(initialStates());
  showNote()
  {
    var notesBox=Hive.box(keybox);
    notesBox.values.toList();
    emit(SuccessStates());
  }

}