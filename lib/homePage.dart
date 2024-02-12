import 'package:flutter/material.dart';


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
                padding:EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  height: 210,
                  width: 177,
                  padding: EdgeInsets.only(bottom: 26),
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
                          Text('Basics', style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
                          Text('COURSE', style: TextStyle(color: Colors.white,),),
                          SizedBox(height: 50,),
                          Text('3-10 MIN', style: TextStyle(color: Colors.white,),),

                        ],
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          padding:const  EdgeInsets.all(10),
                          color: Colors.white60,
                          child: Text('START',
                            style: TextStyle(fontSize: 15),),
                        ),
                      )
                    ],
                  )
                  ,
                ),
              ),
              Padding(
                padding:EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                    padding: EdgeInsets.only(bottom: 26),
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
                            Text('Relaxation', style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
                            Text('MUSIC', style: TextStyle(color: Colors.white,),),
                            SizedBox(height: 50,),
                            Text('3-10 MIN', style: TextStyle(color: Colors.white,),),

                          ],
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            padding:const  EdgeInsets.all(10),
                            color: Colors.white60,
                            child: Text('START',
                              style: TextStyle(fontSize: 15),),
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
          const SizedBox(height: 25,),
          //recommended for you
          const Padding(padding:EdgeInsets.only(left:20.0 ),
              child:Text('Recommended for you',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,fontFamily: 'HelveticaNeu'),)
          ),

          //cards
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding:EdgeInsets.only(left: 20.0),
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
                      child: Text('FOCUS ', style: TextStyle(color: Colors.black,),),

                    ),

                    const Padding(padding:EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: [
                          Text('MEDITATION ', style: TextStyle(color: Colors.black,),),
                          Icon(Icons.circle,size: 7.0,color: Colors.black,),
                          Text(' 3-10 MIN ', style: TextStyle(color: Colors.black,),),
                        ],
                      ),
                    )

                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding:EdgeInsets.only(left: 20.0),
                      child: Container(
                        height: 113.5,
                        width: 162,
                        decoration:  BoxDecoration(
                          color: const Color(0xffAFDBC5),
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
                      child: Text('HAPPINESS', style: TextStyle(color: Colors.black,),),

                    ),

                    const Padding(padding:EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: [
                          Text('MEDITATION ', style: TextStyle(color: Colors.black,),),
                          Icon(Icons.circle,size: 7.0,color: Colors.black,),
                          Text(' 3-10 MIN ', style: TextStyle(color: Colors.black,),),
                        ],
                      ),
                    )

                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding:EdgeInsets.only(left: 20.0),
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
                      child: Text('FOCUS ', style: TextStyle(color: Colors.black,),),

                    ),

                    const Padding(padding:EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: [
                          Text('MEDITATION ', style: TextStyle(color: Colors.black,),),
                          Icon(Icons.circle,size: 7.0,color: Colors.black,),
                          Text(' 3-10 MIN ', style: TextStyle(color: Colors.black,),),
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

      //   bottomNavigationBar: BottomNavigationBar(
      //     selectedIconTheme: IconThemeData(size: 20,),
      //
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home_outlined),
      //       label: 'Home',),
      //     BottomNavigationBarItem(icon: Icon(Icons.dark_mode_outlined),
      //         label: 'Sleep'),
      //     BottomNavigationBarItem(icon: Icon(Icons.ac_unit_outlined),
      //         label: 'Meditate'),
      //     BottomNavigationBarItem(icon: Icon(Icons.music_note_outlined),
      //         label: 'Music'),
      //     BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),
      //         label: 'Afsar'),
      //   ],
      // ),
      bottomNavigationBar: NavigationBar(
        indicatorColor: const Color(0xff8E97FD),
        indicatorShape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(30),),
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