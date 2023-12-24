import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/eidtNote/note_cubit.dart';
import 'package:note_app/customs/custom_icon.dart';
import 'package:note_app/customs/custom_text.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widget/AddNote/EditNote/custom_body_edit_view.dart';
class ItemNote extends StatefulWidget {
 NoteModel noteModel;
 ItemNote({required this.noteModel});

  @override
  State<ItemNote> createState() => _ItemNoteState();
}

class _ItemNoteState extends State<ItemNote> {
  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(onTap: ()
      {
      },
        child: GestureDetector(onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){return BodyEditView(noteModel: widget.noteModel,);}));
        },
          child: Container(margin:const  EdgeInsets.all(15),
            padding: const  EdgeInsets.only(top: 30,bottom: 10),
            decoration: BoxDecoration(color:Color(widget.noteModel.color)
                ,borderRadius: BorderRadius.circular(16)),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title:   CustomText(text:widget.noteModel.Title, color: Colors.black, fontSize: 25),
                  subtitle: CustomText(text:widget.noteModel.subTitle, color: Colors.black.withOpacity(0.6), fontSize: 18),
                  trailing: CustomIcon(icon: Icons.delete,color:Colors.black,onPressed: ()
                  {
                    widget.noteModel.delete();
                    BlocProvider.of<NoteCubit>(context).showNote();
                    setState(() {
                    });
                          }, size: 30
                  ),),              Padding(
                  padding:const   EdgeInsets.only(right: 20,top: 10),
                  child:    CustomText(text: widget.noteModel.date, color: Colors.black, fontSize: 20),
                )
              ],),
          ),
        ),
      );
  }
}
