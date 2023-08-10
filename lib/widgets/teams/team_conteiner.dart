import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/styles.dart';

class TeamContainer extends StatelessWidget {
  TeamContainer({super.key, required this.name, required this.id});
  String name;
  int id;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () => Get.to(PlayersPageMini(teamId: id)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'images/box.png',
            width: MediaQuery.of(context).size.width - 40,
            fit: BoxFit.fitWidth,
          ),
          Positioned(
            top: 5,
            left: 0,
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 30),
                    Container(
                      width: 50,
                      height: 50,
                      child: ClipRRect(
                          child: Image.network(
                        'https://api.sofascore1.com/api/v1/team/$id/image',
                      )),
                    ),
                    SizedBox(width: 20),
                    Text(
                      name,
                      style: h16w700,
                    ),
                  ],
                ),
                Divider(
                  thickness: 2,
                  // color: grey2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
