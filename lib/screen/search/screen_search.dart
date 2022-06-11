import 'package:flutter/material.dart';
import 'package:netflixclone/common_widget/common_widgets.dart';
import 'package:netflixclone/screen/search/search_tile_widget.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          height: 35,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.25),
              borderRadius: BorderRadius.circular(6)),
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.white.withOpacity(0.5),
                )),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 12, left: 16, right: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'Top Searches',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              heightbox(height: 10.0),
              const SearchTileWidget()
            ],
          ),
        ),
      ),
    );
  }
}
