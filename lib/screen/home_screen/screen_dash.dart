import 'package:flutter/material.dart';
import 'package:netflixclone/screen/coming_soon/screen_coming.dart';
import 'package:netflixclone/screen/download_screen/screen_download.dart';

import 'package:netflixclone/screen/home_screen/screen_home.dart';

import 'package:netflixclone/screen/search/screen_search.dart';

class ScreenDash extends StatefulWidget {
  final String coverimg;
  const ScreenDash({required this.coverimg, Key? key}) : super(key: key);

  @override
  State<ScreenDash> createState() => _ScreenDashState();
}

class _ScreenDashState extends State<ScreenDash> {
  int _currentSelectedIntex = 0;
  @override
  Widget build(BuildContext context) {
    final _pages = [
      ScreenHome(coverImg: widget.coverimg),
      const ScreenComing(),
      const ScreenSearch(),
      const ScreenDownload(),
    ];
    return Scaffold(
      body: _pages[_currentSelectedIntex],
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.white,
          selectedItemColor: const Color.fromARGB(255, 239, 8, 8),
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentSelectedIntex,
          onTap: (newIntex) {
            setState(() {
              _currentSelectedIntex = newIntex;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.play_circle_filled,
                ),
                label: 'Coming soon'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.file_download), label: 'Downloads')
          ]),
    );
  }
}
