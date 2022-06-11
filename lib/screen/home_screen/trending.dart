import 'package:flutter/material.dart';
import 'package:netflixclone/json/home_json.dart';

class TrendingWidget extends StatelessWidget {
  const TrendingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          children: List.generate(trendingList.length, (index) {
            return Container(
              margin: const EdgeInsets.only(right: 8),
              height: 160,
              width: 110,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(trendingList[index]['img']),
                      fit: BoxFit.cover)),
            );
          }),
        ),
      ),
    );
  }
}
