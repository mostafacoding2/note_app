import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/eidtNote/note_cubit.dart';
import 'package:note_app/customs/custom_buton.dart';
import 'package:note_app/customs/custom_textfiled.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widget/AddNote/EditNote/custom_appBar_edit_note.dart';
import 'package:note_app/widget/AddNote/EditNote/listView_edit_color.dart';
class BodyEditView extends StatefulWidget {
  const  BodyEditView({required this.noteModel});
final  NoteModel noteModel;
  @override
  State<BodyEditView> createState() => _BodyEditViewState();
}

class _BodyEditViewState extends State<BodyEditView> {
  String?  Title ,Subtitle;
  @override
  Widget build(BuildContext context) {
  return
      Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [

            CustomAppBarEdit(),
          CustomTextField(hintText:widget.noteModel.Title ,onChanged: (data){Title=data;},),

            CustomTextField(hintText:widget.noteModel.subTitle,maxLines: 8,onChanged: (data){Subtitle=data;},) ,



            ListViewEditColor(noteModel: widget.noteModel,),


          CustomButon(onTap: (){

            widget.noteModel.Title=Title??widget.noteModel.Title;

            widget.noteModel.subTitle=Subtitle??widget.noteModel.subTitle;
            widget.noteModel.save();
            BlocProvider.of<NoteCubit>(context).showNote();
           Navigator.pop(context);

          },

              isLoading:  false,
              text: 'Edit')
          ],),
        ),

    );
  }
}
