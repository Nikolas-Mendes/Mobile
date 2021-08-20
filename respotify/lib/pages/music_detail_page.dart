import 'package:flutter/material.dart';

class MusicaDetailPage extends StatefulWidget {
  final String title;
  final String description;
  final Color color;
  final String img;
  final String songUrl;

  const MusicaDetailPage({
    Key? key,
    required this.title,
    required this.description,
    required this.color,
    required this.img,
    required this.songUrl,
  }) : super(key: key);
  
  @override
  _MusicaDetailPageState createState() => _MusicaDetailPageState();
}

class _MusicaDetailPageState extends State<MusicaDetailPage> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: null, 
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        ],
      ),

      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                  top: 20,
                ),
                child: Container(
                  width: size.width - 100,
                  height: size.width - 100,
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(
                      color: widget.color, 
                      blurRadius: 50, 
                      spreadRadius: 5,
                      offset: Offset(-10, 40),
                    )],
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                  top: 20,
                ),
                child: Container(
                  width: size.width - 60,
                  height: size.width - 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(widget.img), fit: BoxFit.cover), 
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Container(
              width: size.width-80,
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.create_new_folder_outlined, color: Colors.white),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        widget.title,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Container(
                        width: 150,
                        child: Text(
                          widget.description,
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.more_vert, color: Colors.white,),
                ],
              ),
            ),
          ),

          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: Slider(
              activeColor: Colors.green,
              value: _currentSliderValue,
              min: 0,
              max: 200,
              onChanged: (value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
          ),

          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "1:50",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
                Text(
                  "4:58",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: null, 
                  icon: Icon(
                    Icons.shuffle, 
                    color: Colors.white.withOpacity(0.8),
                    size: 25,
                  ),
                ),

                IconButton(
                  onPressed: null, 
                  icon: Icon(
                    Icons.skip_previous, 
                    color: Colors.white.withOpacity(0.8),
                    size: 25,
                  ),
                ),

                IconButton(
                  onPressed: () {}, 
                  iconSize: 50,
                  icon: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.play_arrow,
                        size: 28,
                        color: Colors.white,
                      ),
                    )
                  ),
                ),

                IconButton(
                  onPressed: null, 
                  icon: Icon(
                    Icons.skip_next, 
                    color: Colors.white.withOpacity(0.8),
                    size: 25,
                  ),
                ),

                IconButton(
                  onPressed: null, 
                  icon: Icon(
                    Icons.autorenew, 
                    color: Colors.white.withOpacity(0.8),
                    size: 25,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.tv,
                color: Colors.green,
                size: 20,
              ),
              SizedBox(width: 10,),
              Padding(
                padding: const EdgeInsets.only(
                  top: 3,
                ),
                child: Text(
                  "Chromecast is ready",
                  style: TextStyle(
                    color: Colors.green,
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