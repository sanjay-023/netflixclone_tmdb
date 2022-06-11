import 'package:flutter/material.dart';
import 'package:netflixclone/common_widget/common_widgets.dart';
import 'package:netflixclone/json/search_json.dart';

class SearchTileWidget extends StatelessWidget {
  const SearchTileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: List.generate(searchJson.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            children: [
              SizedBox(
                width: (size.width - 36) * 0.8,
                height: 80,
                child: Row(children: [
                  Stack(
                    children: [
                      Container(
                          width: 120,
                          height: 70,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(searchJson[index]['img']),
                                  fit: BoxFit.cover))),
                    ],
                  ),
                  widthbox(width: 10.0),
                  SizedBox(
                    width: (size.width - 36) * 0.4,
                    child: Text(
                      searchJson[index]['title'],
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ]),
              ),
              SizedBox(
                width: (size.width - 36) * 0.2,
                height: 80,
                child: const Icon(
                  Icons.play_circle_outline,
                  color: Colors.white,
                  size: 35,
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
