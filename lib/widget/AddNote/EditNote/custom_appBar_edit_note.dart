import 'package:flutter/material.dart';
import 'package:note_app/customs/custom_icon.dart';
import 'package:note_app/customs/custom_text.dart';
class CustomAppBarEdit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Row(children:
      [
        CustomIcon(icon:Icons.arrow_back_sharp  , color: Colors.white, size: 30,onPressed:(){} ,),
        const   SizedBox(width: 40,),
        CustomText(text: 'Edit Note', color: Colors.white, fontSize: 23),
        const   SizedBox(width: 180,),

      ],),
    );
  }
}
