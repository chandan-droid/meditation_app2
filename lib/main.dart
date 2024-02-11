import 'package:flutter/material.dart';

void main() {
  runApp(const MeditationApp());
}

class MeditationApp extends StatelessWidget{

 const MeditationApp({super.key});

  @override
  Widget build(BuildContext context) {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
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

           const SizedBox(height: 20,),
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
                            color: const Color(0xff8E97FD),
                            /*image: const DecorationImage(
                                image: AssetImage('lib/images/healthyHeart.png')
                            ),*/
                          ),
                   ),
               ),
               Padding(
                 padding:const EdgeInsets.only(left:20.0 ),
                 child: Container(
                   height: 210,
                   width: 177,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: const Color(0xffFFC97E)
                   ),
                 ),
               )
             ],
           ),

           const SizedBox(height: 20,),

           //daily thoughts
           Padding(
             padding:const EdgeInsets.only(left:20.0 ),
             child: Container(
               child:Container(
                 height: 95,
                 width: 375,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: const Color(0xff333242),
                     image: const DecorationImage(
                       image: AssetImage('lib/images/Mask Group1.png')
                   ),
                 ),
                 child:const Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Column(
                       crossAxisAlignment:CrossAxisAlignment.start ,
                       mainAxisAlignment:MainAxisAlignment.center,
                       children: [
                              Text('Daily Thoughts',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700)),
                              Row(
                                children: [
                                  Text('MEDITATION ', style: TextStyle(color: Colors.white,),),
                                  Icon(Icons.circle,size: 7.0,color: Colors.white,),
                                  Text(' 3-10 MIN ', style: TextStyle(color: Colors.white,),),
                                ],
                              ),
                       ],
                     ),
                     Image(image: AssetImage('lib/images/playicon.png'))

                   ],
                 ),
               ),
             )
           ),
           const SizedBox(height: 25,)
           ,
           //recommended for you
           const Padding(padding:EdgeInsets.only(left:20.0 ),
             child:Text('Recommended for you',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,fontFamily: 'HelveticaNeu'),)
           ),

           //cards
           const Row(
            // mainAxisAlignment: MainAxisAlignment.,
             children: [
               Column(
                 children: [

                 ],
               ),

             ],
           ),

         ],

       ),


      bottomNavigationBar: NavigationBar(
        //indicatorShape: ShapeBorder.lerp(C, null, 0.0),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_outlined),
              label: 'Home',),
          NavigationDestination(icon: Icon(Icons.dark_mode_outlined),
              label: 'Sleep'),
          NavigationDestination(icon: Icon(Icons.ac_unit_outlined),
              label: 'Meditate'),
          NavigationDestination(icon: Icon(Icons.music_note_outlined),
              label: 'Music'),
          NavigationDestination(icon: Icon(Icons.person_2_outlined),
              label: 'Afsar'),
        ],
      ),
    );
  }
}




