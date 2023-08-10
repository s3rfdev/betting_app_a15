import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../res/styles.dart';
import '../widgets/app_bar.dart';
import '../widgets/home/menu_container.dart';
import 'cards_page.dart';
import 'collection_page.dart';
import 'leagues_page.dart';
import 'matches_page.dart';
import 'settings_page.dart';
import 'teams_page.dart';
import 'tracked_page.dart';
import 'winners_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                Expanded(child: SizedBox()),
                Text(
                  'Menu'.toUpperCase(),
                  style: h24w400,
                ),
                Expanded(child: SizedBox())
              ],
            ),
            const SizedBox(height: 30),
            InkWell(
              onTap: () => Get.to(() => LeaguesPage()),
              child: MenuContainer(title: 'Leagues'),
            ),
            InkWell(
              onTap: () => Get.to(TeamsPage()),
              child: MenuContainer(title: 'Teams'),
            ),
            InkWell(
              onTap: () => Get.to(MatchesPage()),
              child: MenuContainer(title: 'match'),
            ),
            InkWell(
              onTap: () => Get.to(WinnersPage()),
              child: MenuContainer(title: 'winners chart'),
            ),
            InkWell(
              onTap: () => Get.to(SettignsPage()),
              child: MenuContainer(title: 'settings'),
            ),
            InkWell(
              onTap: () => Get.to(TrackedPage()),
              child: MenuContainer(title: 'tracked'),
            ),
            InkWell(
              onTap: () => Get.to(CardsPage()),
              child: MenuContainer(title: 'cards'),
            ),
            InkWell(
              onTap: () => Get.to(CollectionPage()),
              child: MenuContainer(title: 'collection'),
            ),
          ],
        ),
      ),
    );
  }
}
