import 'package:flutter/material.dart';
import 'package:netflixclone/common_widget/common_widgets.dart';
import 'package:netflixclone/screen/coming_soon/comintile_widget.dart';

class ScreenComing extends StatelessWidget {
  const ScreenComing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Text('Coming Soon'),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.notifications_outlined,
                        color: Colors.white,
                      ),
                      widthbox(width: 10.0),
                      const Text(
                        'Notification',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                        size: 15,
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              ),
            ),
            heightbox(height: 30.0),
            const ComingTileWidget()
          ],
        ),
      ),
    );
  }
}
