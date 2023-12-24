import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/eidtNote/note_cubit.dart';
import 'package:note_app/customs/custom_appBar.dart';
import 'package:note_app/widget/custom_listview_item.dart';
class BodyNoteView extends StatefulWidget {
  const BodyNoteView({super.key});

  @override
  State<BodyNoteView> createState() => _BodyNoteViewState();
}

class _BodyNoteViewState extends State<BodyNoteView> {
  @override
  void initState() {
    BlocProvider.of<NoteCubit>(context).showNote();
    // TODO: implement initState
    super.initState();
  }
  @override

  @override
  Widget build(BuildContext context) {
    return  Column(children: [
        CustomAppBar(text: 'Notes',icon: Icons.arrow_back_sharp,onPressed: () { Navigator.pop(context); },icons: Icons.search, onpressed: (){},)
      ,
      Expanded(child: CustomListViewItem())

    ],);
  }
}
