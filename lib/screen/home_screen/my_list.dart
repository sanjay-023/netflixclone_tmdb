import 'package:flutter/material.dart';
import 'package:netflixclone/json/home_json.dart';
import 'package:netflixclone/screen/home_screen/detail_screen.dart';

class MyList extends StatelessWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: List.generate(mylist.length, (index) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                  return DetailScreen(
                    mvdetails: mylist[index]['img'],
                  );
                }));
              },
              child: Container(
                margin: const EdgeInsets.only(right: 8),
                height: 160,
                width: 110,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(mylist[index]['img']),
                        fit: BoxFit.cover)),
              ),
            );
          }),
        ),
      ),
    );
  }
}
