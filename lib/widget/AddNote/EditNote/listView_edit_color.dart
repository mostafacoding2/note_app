import'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/changecolor/Item_color.dart';
import 'package:note_app/constants/constants.dart';
import 'package:note_app/cubits/eidtNote/note_cubit.dart';
import 'package:note_app/models/note_model.dart';
class ListViewEditColor extends StatefulWidget {
  const ListViewEditColor({super.key,required this.noteModel});
final NoteModel noteModel;
  @override
  State<ListViewEditColor> createState() => _ListViewEditColorState();
}

class _ListViewEditColorState extends State<ListViewEditColor> {
  late int currentindex;
  @override
  void initState() {
    currentindex=keycolors.indexOf(Color(widget.noteModel.color));
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return SizedBox(height: 50*2,
      child: ListView.builder(
scrollDirection: Axis.horizontal,
          itemCount: keycolors.length,
          itemBuilder: (context,index){
        return GestureDetector(
            onTap: (){
              currentindex=index;
              widget.noteModel.color=keycolors[index].value;
              setState(() {

              });


            },
            child: ItemColor(isactive: currentindex==index?true:false,
                color: keycolors[index]));}
      ),
    );
  }
}
