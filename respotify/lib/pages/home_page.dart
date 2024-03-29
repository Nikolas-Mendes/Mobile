import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:respotify/json/artists_json.dart';
import 'package:respotify/json/songs_json.dart';
import 'package:respotify/pages/album_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeMenu1 = 0;
  int activeMenu2 = 2;
  int activeMenu3 = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Explore",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Icon(Icons.list),
            ],
          ),
        ),
      ),

      body: getBody(),

    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Playlists
          //
          //
          //
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // LETREIRO DE ESTILOS DE MUSICA
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    top: 20,
                  ),

                  child: Row(
                    children: List.generate(song_type_1.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          right: 25,
                        ),

                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              activeMenu1 = index;
                            });
                          },
                          
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                song_type_1[index],
                                style: TextStyle(
                                  fontSize: 15,
                                  color: activeMenu1 == index ? Colors.green : Colors.grey,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 3,),
                              activeMenu1 == index
                              ? Container(
                                width: 10,
                                height: 3,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ) : Container(),
                            ],
                          ),

                        ),
                      );
                    }),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // Playlists
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                  ),
                  child: Row(
                    children: List.generate(songs.length, (index) {
              
                      return Padding(
                        padding: const EdgeInsets.only(
                          right: 30,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                alignment: Alignment.bottomCenter,
                                child: AlbumPage(
                                  song: songs[index],
                                ), 
                                type: PageTransitionType.scale,
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                width: 180,
                                height: 180,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage(songs[index]['img']), fit: BoxFit.cover),
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),

                              SizedBox(
                                height: 20,
                              ),

                              Text(
                                songs[index]['title'],
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                              SizedBox(
                                height: 5,
                              ),

                              Container(
                                width: 180,
                                child: Text(
                                  songs[index]['description'],
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
              //Outras Playlists
            ],
          ),
          SizedBox(
            height: 15,
          ),
          //Outras Playlists
          //
          //
          //
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // LETREIRO DE ESTILOS DE MUSICA
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    top: 20,
                  ),

                  child: Row(
                    children: List.generate(song_type_2.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          right: 25,
                        ),

                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              activeMenu2 = index;
                            });
                          },
                          
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                song_type_2[index],
                                style: TextStyle(
                                  fontSize: 15,
                                  color: activeMenu2 == index ? Colors.green : Colors.grey,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 3,),
                              activeMenu2 == index
                              ? Container(
                                width: 10,
                                height: 3,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ) : Container(),
                            ],
                          ),

                        ),
                      );
                    }),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // Playlists
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                  ),
                  child: Row(
                    children: List.generate(songs.length, (index) {
              
                      return Padding(
                        padding: const EdgeInsets.only(
                          right: 30,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                alignment: Alignment.bottomCenter,
                                child: AlbumPage(
                                  song: songs[index],
                                ), 
                                type: PageTransitionType.scale,
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                width: 180,
                                height: 180,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage(songs[index]['img']), fit: BoxFit.cover),
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),

                              SizedBox(
                                height: 20,
                              ),

                              Text(
                                songs[index]['title'],
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                              SizedBox(
                                height: 5,
                              ),

                              Container(
                                width: 180,
                                child: Text(
                                  songs[index]['description'],
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          // Artistas
          //
          //
          //
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // LETREIRO DE ESTILOS DE MUSICA
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    top: 20,
                  ),

                  child: Row(
                    children: List.generate(artists.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          right: 25,
                        ),

                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              activeMenu3 = index;
                            });
                          },
                          
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                artists[index],
                                style: TextStyle(
                                  fontSize: 15,
                                  color: activeMenu3 == index ? Colors.green : Colors.grey,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 3,),
                              activeMenu3 == index
                              ? Container(
                                width: 10,
                                height: 3,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ) : Container(),
                            ],
                          ),

                        ),
                      );
                    }),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // Playlists
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                  ),
                  child: Row(
                    children: List.generate(artists_photo.length, (index) {
              
                      return Padding(
                        padding: const EdgeInsets.only(
                          right: 30,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                alignment: Alignment.bottomCenter,
                                child: AlbumPage(
                                  song: songs[index],
                                ), 
                                type: PageTransitionType.scale,
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              ClipOval(
                                child: Image.asset(
                                  artists_photo[index]['img'],
                                  fit: BoxFit.cover,
                                  width: 180,
                                  height: 180,
                                  // decoration: BoxDecoration(
                                  // image: DecorationImage(image: AssetImage(artists_photo[index]['img']), fit: BoxFit.cover),
                                  // color: Colors.green,
                                  // borderRadius: BorderRadius.circular(10),
                                ),
                              ),

                              SizedBox(
                                height: 20,
                              ),

                              Text(
                                artists_photo[index]['title'],
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                              SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}