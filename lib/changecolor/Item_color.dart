import 'package:flutter/material.dart';
class ItemColor extends StatelessWidget {
   ItemColor({super.key,required this.color,this.isactive=true});
 Color color;
final  bool isactive;
  @override
  Widget build(BuildContext context) {
return Padding(padding: EdgeInsets.all(8),
  child: isactive?  CircleAvatar(radius: 30,
    backgroundColor: Colors.green,
    child: CircleAvatar(radius: 25,
      backgroundColor: color),)
      :CircleAvatar(radius: 30,

  backgroundColor: color.withOpacity(1)),
);
  }
}
