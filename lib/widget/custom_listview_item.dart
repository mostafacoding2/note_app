import 'package:flutter/material.dart';
import 'package:note_app/customs/cutom_item_note.dart';
class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){return ItemNote();});
  }
}
