import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../res/styles.dart';
import '../widgets/app_bar.dart';
import 'teams_page.dart';

class LeaguesPage extends StatelessWidget {
  const LeaguesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey,
      appBar: myAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                BackButton(color: Colors.white),
                Expanded(child: SizedBox()),
                Text(
                  'Leagues       '.toUpperCase(),
                  style: h24w400,
                ),
                Expanded(child: SizedBox())
              ],
            ),
            const SizedBox(height: 30),
            InkWell(
              onTap: () => Get.to(TeamsPage()),
              child: Image.asset('images/leg6.png'),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () => Get.to(TeamsPage()),
              child: Image.asset('images/leg5.png'),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () => Get.to(TeamsPage()),
              child: Image.asset('images/leg4.png'),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () => Get.to(TeamsPage()),
              child: Image.asset('images/leg3.png'),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () => Get.to(TeamsPage()),
              child: Image.asset('images/leg2.png'),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () => Get.to(TeamsPage()),
              child: Image.asset('images/leg1.png'),
            ),
          ],
        ),
      ),
    );
  }
}
