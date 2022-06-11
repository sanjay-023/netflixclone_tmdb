import 'package:flutter/material.dart';

class GradientWidget extends StatelessWidget {
  const GradientWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.black.withOpacity(1),
        Colors.black.withOpacity(0)
      ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
    );
  }
}
