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
        ],
      ),
    );
  }
}