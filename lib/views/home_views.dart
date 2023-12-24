import 'package:flutter/material.dart';
import 'package:note_app/customs/custom_text.dart';
import 'package:note_app/views/note_view.dart';
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff7671DE),
      body: Column(
        children: [
          const  SizedBox(height: 100,),
          Image.asset('asset/images/note-taking.png'),
          const  SizedBox(height: 300,),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white,
                  minimumSize:  const Size(150,60)),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                  return  const  NoteView();
                }));
              },
              child:   const CustomText(text: 'Open', color: Colors.black, fontSize: 23)
          ),
        ],
      ),


    );
  }
}
