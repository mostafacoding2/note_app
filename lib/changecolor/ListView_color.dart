import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/changecolor/Item_color.dart';
import 'package:note_app/constants/constants.dart';
import 'package:note_app/cubits/addNote/add_note_cubit.dart';
class ListViewColor extends StatefulWidget {
  const ListViewColor({super.key});

  @override
  State<ListViewColor> createState() => _ListViewColorState();
}

class _ListViewColorState extends State<ListViewColor> {
  int currentindex=0;
  @override
  Widget build(BuildContext context) {

    return SizedBox(height: 50*2,
      child: ListView.builder(scrollDirection: Axis.horizontal,
          itemCount:keycolors.length ,
          itemBuilder: (context,index)
      {
        return GestureDetector(
            onTap: (){
              currentindex=index;
BlocProvider.of<AddNoteCubit>(context).color=keycolors[index];
setState(() {

});


            },
            child: ItemColor(color:keycolors[index],isactive: currentindex==index?true:false,));

      }),
    );
  }
}
