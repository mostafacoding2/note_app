import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/addNote/add_note_cubit.dart';
import 'package:note_app/cubits/eidtNote/note_cubit.dart';
import 'package:note_app/widget/AddNote/add_form_note.dart';
class ShowModelBottomSheet extends StatefulWidget {
  const ShowModelBottomSheet({super.key});

  @override
  State<ShowModelBottomSheet> createState() => _ShowModelBottomSheetState();
}

class _ShowModelBottomSheetState extends State<ShowModelBottomSheet> {
  @override
  Widget build(BuildContext context) {

      return
        BlocProvider( create: (context)=>AddNoteCubit(),
          child: BlocConsumer<AddNoteCubit,AddNoteStates>(listener: (BuildContext context, state)
          {
            if(state is FailureAddNoteStates){ return print(' failed ${state.errorMessage}');}
            if(state is SuccessAddNoteStates)
            {
              BlocProvider.of<NoteCubit>(context).showNote();
              Navigator.pop(context);
              setState(() {

              });
            }

          },

            builder: (BuildContext context, Object? state) { return  Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: SingleChildScrollView(child: AddNoteForm()),
            ); },
              ));






     }}


