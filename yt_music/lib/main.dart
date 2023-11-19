import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    final logoImg = 'assets/images/youtube-music.png';


    return MaterialApp(
      title: 'YT MUSIC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(          
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(48, 14, 32, 1),
                    Color.fromRGBO(62, 36, 17, 1),
                  ]
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          logoImg,
                          height: 50,
                          fit: BoxFit.fitWidth
                        ),  
                        Row(
                          children: [
                            Icon(
                              Icons.podcasts,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(width: 15),
                            Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(width: 15),
                            CircleAvatar(
                              backgroundImage: NetworkImage("https://cdn.discordapp.com/avatars/763374816920076288/26e2e8ddbe6aad33fa3d9c7732415e3f.webp?size=256"),
                              radius: 25,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Category("Energize"),
                          Category("Mood"),
                          Category("Happy"),
                          Category("Phonk"),
                          Category("Bass"),
                          Category("Crazy"),
                          Category("Weekend"),
                          Category("Study"),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: const Color.fromARGB(255, 10, 10, 10),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "START RADIO FROM A SONG",
                          style: TextStyle(
                            color: Color.fromARGB(255, 167, 167, 167),
                            fontSize: 15
                          ),
                        ),
                        Text(
                          "Quick Picks",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  QuickPicks("https://i.scdn.co/image/ab67616d000048514e7c80fce37291994c3eac79","Lorem Ipsum Dolar Sit Amet","Lorem Ipsum"),
                                  QuickPicks("https://i.scdn.co/image/ab67616d000048514e7c80fce37291994c3eac79","Lorem Ipsum Dolar Sit Amet","Lorem Ipsum"),
                                  QuickPicks("https://i.scdn.co/image/ab67616d000048514e7c80fce37291994c3eac79","Lorem Ipsum Dolar Sit Amet","Lorem Ipsum"),
                                  QuickPicks("https://i.scdn.co/image/ab67616d000048514e7c80fce37291994c3eac79","Lorem Ipsum Dolar Sit Amet","Lorem Ipsum"),
                                ],
                              ),
                              Column(
                                children: [
                                  QuickPicks("https://i.scdn.co/image/ab67616d000048514e7c80fce37291994c3eac79","Lorem Ipsum Dolar Sit Amet","Lorem Ipsum"),
                                  QuickPicks("https://i.scdn.co/image/ab67616d000048514e7c80fce37291994c3eac79","Lorem Ipsum Dolar Sit Amet","Lorem Ipsum"),
                                  QuickPicks("https://i.scdn.co/image/ab67616d000048514e7c80fce37291994c3eac79","Lorem Ipsum Dolar Sit Amet","Lorem Ipsum"),
                                  QuickPicks("https://i.scdn.co/image/ab67616d000048514e7c80fce37291994c3eac79","Lorem Ipsum Dolar Sit Amet","Lorem Ipsum"),
                                ],
                              ),
                            ],
                          ),
                        ),
                  
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Mixed For you",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white70, width: 1),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Text(
                                  "More",
                                  style: TextStyle(
                                    color: const Color.fromARGB(255, 168, 168, 168),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: Column(
                                  children: [
                                    Image.network(
                                      "https://upload.wikimedia.org/wikipedia/commons/1/1b/Square_200x200.png?20060524154217",
                                      width: 200,
                                      height: 200,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Song Name",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18
                                            ),
                                          ),
                                          Text(
                                            "1n",
                                            style: TextStyle(
                                              color: Color.fromARGB(255, 167, 167, 167),
                                              fontSize: 14
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: Column(
                                  children: [
                                    Image.network(
                                      "https://upload.wikimedia.org/wikipedia/commons/1/1b/Square_200x200.png?20060524154217",
                                      width: 200,
                                      height: 200,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Song Name",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18
                                            ),
                                          ),
                                          Text(
                                            "1n",
                                            style: TextStyle(
                                              color: Color.fromARGB(255, 167, 167, 167),
                                              fontSize: 14
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: Column(
                                  children: [
                                    Image.network(
                                      "https://upload.wikimedia.org/wikipedia/commons/1/1b/Square_200x200.png?20060524154217",
                                      width: 200,
                                      height: 200,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Song Name",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18
                                            ),
                                          ),
                                          Text(
                                            "1n",
                                            style: TextStyle(
                                              color: Color.fromARGB(255, 167, 167, 167),
                                              fontSize: 14
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      
                      ],
                    ),
                  ),

                ),
              ),
            ),
            Container(
              height: 70,
              width: double.infinity,
              color: const Color.fromARGB(255, 33, 33, 33),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.home,color: Colors.white, size: 35,),
                      Text("Home", style: TextStyle(
                        color: Colors.white,
                      ),),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.play_circle_fill,color: Colors.white, size: 35,),
                      Text("Samples", style: TextStyle(
                        color: Colors.white,
                      ),),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.explore,color: Colors.white, size: 35,),
                      Text("Explore", style: TextStyle(
                        color: Colors.white,
                      ),),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.library_add,color: Colors.white, size: 35,),
                      Text("Library", style: TextStyle(
                        color: Colors.white,
                      ),),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.home,color: Colors.white, size: 35,),
                      Text("Upgrade", style: TextStyle(
                        color: Colors.white,
                      ),),
                    ],
                  ),
                  
                ],
              ),
            ),
          ]
        )
      )
    );
  }

  Padding QuickPicks(String url, String songName, String artist) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.5, horizontal: 5),
      child: Row(
        children: [
          Image.network(
            url,
            width: 65,
            height: 65,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  songName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                  ),
                ),
                Text(
                  artist,
                  style: TextStyle(
                    color: Color.fromARGB(255, 167, 167, 167),
                    fontSize: 14
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Container Category(String text) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color.fromARGB(20, 255, 255, 255),
        border: Border.all(
          color: Colors.white,
          width: 0.1
        )
      ),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
      margin: EdgeInsets.only(left: 5, right: 5),
    );
  }
}
