import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          'Tv Shows',
          style: TextStyle(color: Colors.white),
        ),
        const Text(
          'Movies',
          style: TextStyle(color: Colors.white),
        ),
        Row(
          children: const [
            Text(
              'Categories',
              style: TextStyle(color: Colors.white),
            ),
            Icon(
              Icons.arrow_drop_down_outlined,
              color: Colors.white,
            )
          ],
        ),
      ],
    );
  }
}
