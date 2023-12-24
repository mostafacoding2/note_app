import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/changecolor/ListView_color.dart';
import 'package:note_app/cubits/addNote/add_note_cubit.dart';
import 'package:note_app/customs/custom_buton.dart';
import 'package:note_app/customs/custom_textfiled.dart';
import 'package:note_app/models/note_model.dart';
import 'package:intl/intl.dart';
class AddNoteForm extends StatefulWidget {
  AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState>formkey=GlobalKey();
  String ? Title, SubTitle;
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children:
        [
          CustomTextField(hintText:'Title',maxLines: 1, onSaved: (data)
          {
            Title=data;
          },
          ),
          CustomTextField(hintText:'content',maxLines: 7,onSaved: (data)
          {
            SubTitle=data;
          },

          ),
          ListViewColor(),
                BlocBuilder<AddNoteCubit,AddNoteStates>(builder: (BuildContext context, state) {  return
                   CustomButon(
                             isLoading: state is LoadingAddNoteStates?true:false,

                    text: 'Add',onTap:() {
                    if (formkey.currentState!.validate()) {
                      formkey.currentState!.save();

                      var now = DateTime.now();

                      var currentDate = DateFormat.yMMMd().format(now);

                      var noteModel =NoteModel(Title: Title!, color: Colors.lightBlueAccent.value, date: currentDate, subTitle: SubTitle!);

                      BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);


                    }

                    else {
                      autovalidateMode = AutovalidateMode.always;

                      setState(() {

                      });
                    }
                  }
                             );}
                )
        ],),
    )
    ;
  }
}
