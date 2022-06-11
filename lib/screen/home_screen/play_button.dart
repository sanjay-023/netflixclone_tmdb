import 'package:flutter/material.dart';
import 'package:netflixclone/common_widget/common_widgets.dart';

class PlayButton extends StatelessWidget {
  final String bName;
  final Color bCOlor;
  final IconData bIcon;
  const PlayButton(
      {required this.bName,
      required this.bCOlor,
      required this.bIcon,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 42,
        width: double.infinity,
        decoration: BoxDecoration(
            color: bCOlor, borderRadius: BorderRadius.circular(6)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              bIcon,
              size: 30,
            ),
            widthbox(width: 8.0),
            Text(
              bName,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
