import 'package:flutter/material.dart';
import 'package:netflixclone/common_widget/common_widgets.dart';
import 'package:netflixclone/json/comin_soon_json.dart';
import 'package:netflixclone/json/coming_soon_json.dart';

class ComingTileWidget extends StatelessWidget {
  const ComingTileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(comingSoonJson.length, (index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          children: [
            SizedBox(
                height: 220,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(comingSoonJson[index]['img']),
                              fit: BoxFit.cover)),
                    )
                  ],
                )),
            heightbox(height: 15.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: Text(
                      comingsoonList[index]['title'],
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(children: [
                    Column(
                      children: [
                        const Icon(
                          Icons.notifications_outlined,
                          color: Colors.white,
                        ),
                        heightbox(height: 5.0),
                        const Text(
                          'Remind me',
                          style: TextStyle(color: Colors.white, fontSize: 11),
                        )
                      ],
                    ),
                    widthbox(width: 20.0),
                    Column(
                      children: [
                        const Icon(
                          Icons.info_outline,
                          color: Colors.white,
                        ),
                        heightbox(height: 5.0),
                        const Text(
                          'info',
                          style: TextStyle(color: Colors.white, fontSize: 11),
                        )
                      ],
                    )
                  ])
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(comingSoonJson[index]['date'],
                      style: TextStyle(color: Colors.white.withOpacity(0.4))),
                ],
              ),
            ),
            heightbox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                comingSoonJson[index]['description'],
                style: TextStyle(color: Colors.white.withOpacity(0.4)),
              ),
            ),
            heightbox(height: 10.0),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    comingSoonJson[index]['type'],
                    style: const TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }));
  }
}
