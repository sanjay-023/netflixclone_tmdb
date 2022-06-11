import 'package:flutter/material.dart';
import 'package:netflixclone/common_widget/common_widgets.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            const Icon(
              Icons.add,
              color: Colors.white,
              size: 25,
            ),
            heightbox(height: 5.0),
            const Text(
              'My List',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            )
          ],
        ),
        Container(
          width: 110,
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
              ),
              widthbox(width: 5.0),
              const Text(
                'Play',
                style: TextStyle(color: Colors.white, fontSize: 16),
              )
            ],
          ),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 232, 19, 3),
              borderRadius: BorderRadius.circular(4)),
        ),
        Column(
          children: [
            const Icon(
              Icons.info,
              color: Colors.white,
              size: 25,
            ),
            heightbox(height: 5.0),
            const Text(
              'Info',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            )
          ],
        )
      ],
    );
  }
}
