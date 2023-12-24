import'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constants/constants.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/home_views.dart';
void main()async
{
  await Hive.initFlutter();
   await Hive.openBox<NoteModel>(keybox);
  runApp(  NoteApp());
}
class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,fontFamily: 'Poppins'),
      home:HomeView()
    );

  }
}
