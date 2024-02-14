import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditation_app2/homePage.dart';

void main() {
  runApp(const MeditationApp());
}

class MeditationApp extends StatelessWidget{

 const MeditationApp({super.key});

  @override
  Widget build(BuildContext context) {
      return  const MaterialApp(
        debugShowCheckedModeBanner: false,
        title:'meditation app',
        home:Homepage(),
      );
  }
}





