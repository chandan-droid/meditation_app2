import 'package:flutter/material.dart';

void main() {
  runApp(const MeditationApp());
}

class MeditationApp extends StatelessWidget{

 const MeditationApp({super.key});

  @override
  Widget build(BuildContext context) {
      return const MaterialApp(
        title:'meditation app',
        home:Homepage(),
      );
  }
}
final mainIcon= Container(
  height: 40,
  child: Image.asset("lib/images/logo.png"),

  );
class Homepage extends StatelessWidget{

  const Homepage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(


       body:Column(
         crossAxisAlignment:  CrossAxisAlignment.start,
         children: [
           //head line
           Container(
             alignment:Alignment.center,
             margin:const EdgeInsets.symmetric(vertical: 50.0, horizontal: 112.0,),
             height: 30,
             width: 500,
             child: Row(
               children: <Widget>[
                 const Text('Silent',style: TextStyle(fontSize: 20,letterSpacing: 4,),),
                 mainIcon,
                 const Text('Moon',style: TextStyle(fontSize: 20,letterSpacing: 4,),),
               ],
             ),
           ),

           //good morning
              Padding(
                  padding:const EdgeInsets.only(left:20.0 ),
                child: Container(
                  child: const Text('Good Morning, Afsar',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.black87),),
                ),
              ),
           //wish
             const  Padding(
                  padding: EdgeInsets.only(left:20.0 ),
                  child: Text('We wish you have a good day',style: TextStyle(fontSize: 20,color: Colors.black45),),
              ),

           SizedBox(height: 20,),
           //course/music
            Row(
             children: [
               Padding(
                   padding:EdgeInsets.only(left:20.0 ),
                   child: Container(
                          height: 210,
                          width: 177,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue.shade400
                          ),
                   ),
               ),
               Padding(
                 padding:EdgeInsets.only(left:20.0 ),
                 child: Container(
                   height: 210,
                   width: 177,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: Colors.yellow.shade700
                   ),
                 ),
               )
             ],
           ),

           SizedBox(height: 20,),

           //daily thoughts
           Padding(
             padding:EdgeInsets.only(left:20.0 ),
             child: Container(
               height: 95,
               width: 347,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   color: Colors.yellow.shade700
               ),
             ),
           )

           //recommended for you

         ],

       ),


      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),
              label: 'Home',backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.dark_mode_outlined),
              label: 'Sleep'),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit_outlined),
              label: 'Meditate'),
          BottomNavigationBarItem(icon: Icon(Icons.music_note_outlined),
              label: 'Music'),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),
              label: 'Afsar'),
        ],
      ),
    );
  }
}


