import 'package:flutter/material.dart';

import '../../res/styles.dart';

class MenuContainer extends StatelessWidget {
  MenuContainer({
    super.key,
    required this.title,
    this.img,
  });

  String title;
  String? img;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      margin: EdgeInsets.symmetric(vertical: 5),
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset('images/box.png'),
          Positioned(
            top: 10,
            child: Text(
              title.toUpperCase(),
              style: h16w700,
            ),
          ),
        ],
      ),
    );
  }
}
