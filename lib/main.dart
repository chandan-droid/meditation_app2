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

      body: Container(
        alignment:Alignment.center,
        margin:const EdgeInsets.symmetric(vertical: 50.0, horizontal: 112.0,),
        //color: Colors.grey,
        height: 40,
        width: 500,
        child: Row(
          children: <Widget>[
            const Text('Silent',style: TextStyle(fontSize: 20,letterSpacing: 4,),),
           mainIcon,
            const Text('Moon',style: TextStyle(fontSize: 20,letterSpacing: 4,),),
          ],
        ),
        //padding: const EdgeInsets.all(1.0),
        //child: const Text('silent moon', style: TextStyle(fontSize: 30,letterSpacing: 2,),),

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


