import 'package:flutter/material.dart';
import 'package:note_app/customs/custom_appBar.dart';
import 'package:note_app/widget/custom_listview_item.dart';
class BodyNoteView extends StatelessWidget {
  const BodyNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(children: [
        CustomAppBar(text: 'Notes',icon: Icons.arrow_back_sharp,onPressed: () { Navigator.pop(context); },icons: Icons.search, onpressed: (){},)
      ,
      Expanded(child: CustomListViewItem())

    ],);
  }
}
