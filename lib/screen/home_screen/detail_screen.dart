import 'package:flutter/material.dart';
import 'package:netflixclone/common_widget/common_widgets.dart';
import 'package:netflixclone/screen/home_screen/play_button.dart';

class DetailScreen extends StatelessWidget {
  final String mvdetails;
  const DetailScreen({required this.mvdetails, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.collections_bookmark)),
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/images/netflixavatar.png',
                width: 26,
              ))
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(mvdetails), fit: BoxFit.cover),
            ),
          ),
          heightbox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: const [
                Text(
                  'Animals',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          heightbox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: const [
                Text(
                  'Watch Now',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
          ),
          heightbox(height: 15.0),
          const PlayButton(
            bName: 'Resume',
            bCOlor: Colors.white,
            bIcon: Icons.play_arrow,
          ),
          heightbox(height: 10.0),
          const PlayButton(
            bName: 'Download',
            bCOlor: Colors.grey,
            bIcon: Icons.download,
          )
        ],
      ),
    );
  }
}
