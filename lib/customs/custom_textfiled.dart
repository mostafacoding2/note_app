import 'package:flutter/material.dart';
import 'package:note_app/constants/constants.dart';
class CustomTextField extends StatelessWidget {
  CustomTextField({super.key,required this.hintText,this.onChanged,this.maxLines=1,this.onSaved});
  final String  hintText;
  Function(String)?   onChanged;
  final int maxLines;
  void Function(String?)?onSaved;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:20,bottom: 10,left: 10,right: 10),
      child: TextFormField(
        validator: (value)
        {
          if(value?.isEmpty??true)
          {
            return 'Field is required ';
          }
          else{ return null;}
        },
        maxLines:maxLines ,
        onSaved:onSaved ,
        cursorColor: keyprimarycolor,
        onChanged:onChanged ,
        decoration: InputDecoration(
            contentPadding:const  EdgeInsets.only(top: 24,bottom: 25,left: 15),
            hintText:  hintText,
            hintStyle: TextStyle(color: keyprimarycolor,fontSize: 23,fontWeight: FontWeight.bold),
            border: buildborder(keyprimarycolor),
            enabledBorder: buildborder(keyprimarycolor),
            focusedBorder: buildborder(keyprimarycolor)),      ),
    );
  }
  OutlineInputBorder buildborder([color]) {
    return  OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: color)
    );
  }
}
