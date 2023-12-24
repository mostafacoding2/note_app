part of'add_note_cubit.dart';
@immutable
abstract class NoteStates{}

class initialAddNoteStates extends NoteStates{}

class LoadingAddNoteStates  extends NoteStates{}

class SuccessAddNoteStates  extends NoteStates{}

class FailureAddNoteStates  extends NoteStates
{
  final String errorMessage;
  FailureAddNoteStates(this.errorMessage);
}
