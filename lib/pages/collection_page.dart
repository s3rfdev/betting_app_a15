import 'package:flutter/material.dart';

import '../models/teams.dart';
import '../api/api.dart';
import '../res/styles.dart';
import '../widgets/app_bar.dart';
import '../widgets/teams/team_conteiner.dart';

class CollectionPage extends StatefulWidget {
  const CollectionPage({super.key});

  @override
  State<CollectionPage> createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
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
                  'collection       '.toUpperCase(),
                  style: h24w400,
                ),
                Expanded(child: SizedBox())
              ],
            ),

            SizedBox(height: 50),
            // MatchCard(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('images/g1.png', width: 90),
                Image.asset('images/g2.png', width: 90),
                Image.asset('images/g3.png', width: 90),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('images/p.png', width: 90),
                Image.asset('images/p.png', width: 90),
                Image.asset('images/p.png', width: 90),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('images/p.png'),
                Image.asset('images/p.png'),
                Image.asset('images/p.png'),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('images/p.png'),
                Image.asset('images/p.png'),
                Image.asset('images/p.png'),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
