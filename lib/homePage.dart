import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget{
  const Homepage({super.key});
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>{
  int _currentIndex=0;
  @override
  Widget build(BuildContext context){
    return Scaffold(

      body:Column(
        crossAxisAlignment:  CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //head line
          Container(
            alignment:Alignment.center,
            margin:const EdgeInsets.only(top: 50,bottom: 40),
            height: 30,
            width: 500,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                const Text('Silent',style: TextStyle(fontSize: 20,letterSpacing: 4),),
                const SizedBox(width: 10,),
                Image.asset("lib/images/logo.png"),
                const SizedBox(width: 10,),
                const Text('Moon',style: TextStyle(fontSize: 20,letterSpacing: 4,),),
              ],
            ),
          ),

          //good morning
          const Padding(
            padding:EdgeInsets.only(left:20.0 ),
            child:Text('Good Morning, Afsar',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.black87),),
            ),

          //wish
          const  Padding(
            padding: EdgeInsets.only(left:20.0 ),
            child: Text('We wish you have a good day',style: TextStyle(fontSize: 20,color: Colors.black45),),
          ),

          const SizedBox(height: 30,),

          //course/music
          Row(
            children: [
              Padding(
                padding:const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  height: 210,
                  width: 177,
                  padding:const  EdgeInsets.only(bottom: 26),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff8E97FD),
                    image: const DecorationImage(
                        image: AssetImage('lib/images/healthyHeart.png'),
                        alignment: Alignment.topRight
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Basics', style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 18),),
                          Text('COURSE', style: TextStyle(color: Colors.white,fontSize: 11,letterSpacing: 2),),
                          SizedBox(height: 40,),
                          Text('3-10 MIN', style: TextStyle(color: Colors.white,),),

                        ],
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Container(
                          padding:const  EdgeInsets.fromLTRB(15,11,14,10),
                          color: Colors.white60,
                          child: const Text('START',
                            style: TextStyle(fontSize: 12,color:Color(0xff3F414E),fontWeight: FontWeight.bold, ),),
                        ),
                      )
                    ],
                  )
                  ,
                ),
              ),
              Padding(
                padding:const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                    padding: const EdgeInsets.only(bottom: 26),
                    height: 210,
                    width: 177,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffFFC97E),
                      image: const DecorationImage(
                          image: AssetImage('lib/images/girl_listening_music.png'),
                          alignment: Alignment.topRight
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('Relaxation', style: TextStyle(color: Color(0xff3F414E),fontWeight: FontWeight.w700,fontSize: 18),),
                            Text('MUSIC', style: TextStyle(color: Color(0xff524F53),fontSize: 11,letterSpacing: 2),),
                            SizedBox(height: 40,),
                            Text('3-10 MIN', style: TextStyle(color: Color(0xff524F53),),),

                          ],
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Container(
                            padding:const  EdgeInsets.fromLTRB(15,11,14,10),
                            color: Colors.black87,
                            child: const Text('START',
                              style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.bold),),
                          ),
                        )
                      ],
                    )
                ),
              )
            ],
          ),

          const SizedBox(height: 20,),

          //daily thoughts
          Padding(
              padding:const EdgeInsets.only(left:20.0 ),
              child: Container(
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
                              Icon(Icons.circle,size:5,color: Colors.white,),
                              Text(' 3-10 MIN ', style: TextStyle(color: Colors.white,),),
                            ],
                          ),
                        ],
                      ),
                      Image(image: AssetImage('lib/images/playicon.png'))

                    ],
                  ),
                ),
              ),

          const SizedBox(height: 20,),
          //recommended for you
          const Padding(padding:EdgeInsets.only(left:20.0 ),
              child:Text('Recommended for you',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,fontFamily: 'HelveticaNeu'),)
          ),
          const SizedBox(height: 10,),
          //cards
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding:const EdgeInsets.only(left: 20.0),
                      child: Container(
                        height: 113.5,
                        width: 162,
                        decoration:  BoxDecoration(
                          color: const Color(0xffAFDBC5),
                          borderRadius: BorderRadius.circular(10.0),
                          image: const DecorationImage(
                              image: AssetImage('lib/images/focused_man.png'),
                              alignment: Alignment.centerRight
                          ),

                        ),
                      ),
                    ),
                    const Padding(
                      padding:EdgeInsets.only(left: 20.0),
                      child: Text('Focus ', style: TextStyle(color: Color(0xff3F414E),fontSize: 18,fontWeight: FontWeight.w700),),

                    ),

                    const Padding(padding:EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: [
                          Text('MEDITATION ', style: TextStyle(color: Color(0xffA1A4B2),fontSize: 11),),
                          Icon(Icons.circle,size: 3.0,color: Color(0xffA1A4B2),),
                          Text(' 3-10 MIN ', style: TextStyle(color: Color(0xffA1A4B2),fontSize: 11),),
                        ],
                      ),
                    )

                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding:const EdgeInsets.only(left: 20.0),
                      child: Container(
                        height: 113.5,
                        width: 162,
                        decoration:  BoxDecoration(
                          color: const Color(0xffFEE3B4),
                          borderRadius: BorderRadius.circular(10.0),
                          image: const DecorationImage(
                              image: AssetImage('lib/images/happy_women.png'),
                              alignment: Alignment.centerRight
                          ),

                        ),
                      ),
                    ),
                    const Padding(
                      padding:EdgeInsets.only(left: 20.0),
                      child: Text('Happiness', style: TextStyle(color: Color(0xff3F414E),fontSize: 18,fontWeight: FontWeight.w700),),

                    ),

                    const Padding(padding:EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: [
                          Text('MEDITATION ', style: TextStyle(color: Color(0xffA1A4B2),fontSize: 11),),
                          Icon(Icons.circle,size: 3.0,color: Color(0xffA1A4B2),),
                          Text(' 3-10 MIN ', style: TextStyle(color: Color(0xffA1A4B2),fontSize: 11),),
                        ],
                      ),
                    )

                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding:const EdgeInsets.only(left: 20.0),
                      child: Container(
                        height: 113.5,
                        width: 162,
                        decoration:  BoxDecoration(
                          color: const Color(0xffAFDBC5),
                          borderRadius: BorderRadius.circular(10.0),
                          image: const DecorationImage(
                              image: AssetImage('lib/images/focused_man.png'),
                              alignment: Alignment.centerRight
                          ),

                        ),
                      ),
                    ),
                    const Padding(
                      padding:EdgeInsets.only(left: 20.0),
                      child: Text('Focus ', style: TextStyle(color: Color(0xff3F414E),fontSize: 18,fontWeight: FontWeight.w700),),

                    ),

                    const Padding(padding:EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: [
                          Text('MEDITATION ', style: TextStyle(color: Color(0xffA1A4B2),fontSize: 11),),
                          Icon(Icons.circle,size: 3.0,color: Color(0xffA1A4B2),),
                          Text(' 3-10 MIN ', style: TextStyle(color: Color(0xffA1A4B2),fontSize: 11),),
                        ],
                      ),
                    )

                  ],
                ),

              ],
            ),
          )

        ],

      ),
       /* bottomNavigationBar: BottomNavigationBar(
          //type: ,
          fixedColor: Colors.cyanAccent,
          selectedIconTheme: IconThemeData(size: 20,fill: 0.7),

         items:  [
           BottomNavigationBarItem(icon: Icon(Icons.home),
             //activeIcon: Image.asset('lib/images/logo.png'),
             backgroundColor: Color(0xff3F414E),
             label: 'Home',),
           BottomNavigationBarItem(icon: Icon(Icons.dark_mode_outlined),
               label: 'Sleep'),
           BottomNavigationBarItem(icon: Icon(Icons.ac_unit_outlined),
               label: 'Meditate'),
           BottomNavigationBarItem(icon: Icon(Icons.music_note_outlined),
               label: 'Music'),
           BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),
               label: 'Afsar'),
        ],
      ), */

       bottomNavigationBar: NavigationBar(
            height: 85,
            selectedIndex: _currentIndex,
            onDestinationSelected: (value){
              setState(() {
                _currentIndex=value;
              });
            },

            indicatorColor: const Color(0xff8E97FD),
            destinations: const [
           NavigationDestination(icon:ImageIcon(AssetImage('lib/images/home.png')),
             label: 'Home',),
           NavigationDestination(icon:ImageIcon(AssetImage('lib/images/bedtime.png')),
             label: 'Sleep'),
           NavigationDestination(icon:ImageIcon(AssetImage('lib/images/meditate.png')),
             label: 'Meditate'),
           NavigationDestination(icon:ImageIcon(AssetImage('lib/images/music.png')),
             label: 'Music'),
           NavigationDestination(icon:ImageIcon(AssetImage('lib/images/profile.png')),
             label: 'Afsar'),
        ],
    ),

    );
  }
}