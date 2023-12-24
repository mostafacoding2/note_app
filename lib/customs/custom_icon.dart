import 'package:flutter/material.dart';
class CustomIcon extends StatelessWidget {
  CustomIcon({super.key,this.onPressed,required this.icon, required this.color,required this.size});
  final VoidCallback ? onPressed;
  final  IconData  icon;
  final Color color;
  final double size;
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed:onPressed , icon:Icon(icon,color:color ,size: size,) );
  }
}
