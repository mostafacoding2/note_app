
import 'package:flutter/material.dart';
import 'package:note_app/constants/constants.dart';
import 'package:note_app/customs/custom_text.dart';
class CustomButon extends StatelessWidget {
  CustomButon({super.key,this.onTap,required this.text,});
  VoidCallback ?onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onTap,
      child: Container(margin:const  EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: keyprimarycolor,borderRadius: BorderRadius.circular(16)),
        child: Center(child: CustomText(text: text, color: Colors.black, fontSize: 24)),

      ),
    );
  }
}
