part of'add_note_cubit.dart';
@immutable
abstract class AddNoteStates{}

class initialAddNoteStates extends AddNoteStates{}

class LoadingAddNoteStates  extends AddNoteStates{}

class SuccessAddNoteStates  extends AddNoteStates{}

class FailureAddNoteStates  extends AddNoteStates
{
  final String errorMessage;
  FailureAddNoteStates(this.errorMessage);
}
