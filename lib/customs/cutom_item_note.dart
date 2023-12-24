import 'package:flutter/material.dart';
import 'package:note_app/customs/custom_icon.dart';

import 'package:note_app/customs/custom_text.dart';
class ItemNote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(onTap: ()
      {
      },
        child: Container(margin:const  EdgeInsets.all(15),
          padding: const  EdgeInsets.only(top: 30,bottom: 10),
          decoration: BoxDecoration(color:Colors.green
              ,borderRadius: BorderRadius.circular(16)),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: const   CustomText(text:'Title', color: Colors.black, fontSize: 25),
                subtitle: CustomText(text:'SubTitle', color: Colors.black.withOpacity(0.6), fontSize: 18),
                trailing: CustomIcon(icon: Icons.delete,color:Colors.black,onPressed: ()
                {
                        }, size: 30
                ),),

            const   Padding(
                padding:  EdgeInsets.only(right: 20,top: 10),
                child:    CustomText(text: 'Date', color: Colors.black, fontSize: 20),
              )
            ],),
        ),
      );
  }
}
