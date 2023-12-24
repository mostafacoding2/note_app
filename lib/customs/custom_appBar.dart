import 'package:flutter/material.dart';
import 'package:note_app/customs/custom_icon.dart';
import 'package:note_app/customs/custom_text.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key,required this.icon,required this.text,required this.icons,required this.onPressed,required this.onpressed});
 final IconData icon,icons;
final  String text;
 final VoidCallback onPressed,onpressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Row(children:
      [
      CustomIcon(icon:icon  , color: Colors.white, size: 30,onPressed:onPressed ,),
      const   SizedBox(width: 40,),
        CustomText(text: text, color: Colors.white, fontSize: 23),
        const   SizedBox(width: 180,),
        Container(height: 50,width: 50,decoration:  BoxDecoration(color:Colors.white.withOpacity(0.05),borderRadius: BorderRadius.circular(16)),
            child: CustomIcon(icon:icons  , color: Colors.white, size: 30,onPressed: onpressed,)),

      ],),
    );
  }
}
