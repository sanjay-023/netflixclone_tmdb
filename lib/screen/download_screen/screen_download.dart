import 'package:flutter/material.dart';
import 'package:netflixclone/common_widget/common_widgets.dart';

class ScreenDownload extends StatelessWidget {
  const ScreenDownload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Downloads',
          style: TextStyle(color: Colors.white),
        ),
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
            width: double.infinity,
            height: 60,
            color: const Color.fromARGB(255, 37, 37, 37),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const Icon(
                    Icons.info_outline,
                    color: Colors.white,
                  ),
                  widthbox(width: 15.0),
                  const Text(
                    'Smart Downloads',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'ON',
                        style: TextStyle(fontSize: 16),
                      ))
                ],
              ),
            ),
          ),
          heightbox(height: 30.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.download_for_offline,
                color: Colors.grey.withOpacity(0.5),
                size: 200,
              )
            ],
          ),
          const Text(
            'Never Be Without Netflix',
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          heightbox(height: 15.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Text(
                  "Download shows and movie so you'll never be without something to watch even when you're offline",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.4),
                      height: 1.4,
                      fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                heightbox(height: 20.0),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'See What You Can Download',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
