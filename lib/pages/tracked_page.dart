import 'dart:math';

import 'package:flutter/material.dart';

import '../models/teams.dart';
import '../api/api.dart';
import '../res/styles.dart';
import '../widgets/app_bar.dart';
import '../widgets/matches/matche_card.dart';
import '../widgets/teams/team_conteiner.dart';

class TrackedPage extends StatefulWidget {
  const TrackedPage({super.key});

  @override
  State<TrackedPage> createState() => _TrackedPageState();
}

class _TrackedPageState extends State<TrackedPage> {
  Teams? teams;
  @override
  void initState() {
    () async {
      var tmp = await SofaApi.getTeams(trId: 52327);
      setState(() {
        teams = tmp;
      });
    }();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey,
      appBar: myAppBar(),
      body: SingleChildScrollView(
        child: teams != null
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      BackButton(color: Colors.white),
                      Expanded(child: SizedBox()),
                      Text(
                        'Tracked       '.toUpperCase(),
                        style: h24w400,
                      ),
                      Expanded(child: SizedBox())
                    ],
                  ),

                  SizedBox(height: 40),
                  // MatchCard(),
                  for (int i = 0; i < 3 + Random().nextInt(2); i++)
                    MatchCard(
                      team1: teams!.teamsMap.values
                          .toList()
                          .reversed
                          .take(100)
                          .toList()[Random().nextInt(100)],
                      team2: teams!.teamsMap.values
                          .toList()
                          .reversed
                          .take(100)
                          .toList()[Random().nextInt(100)],
                      league: 'PREMIER LEAGUE',
                    ),
                  SizedBox(height: 20),
                  Image.asset('images/leg6.png'),
                  SizedBox(height: 20),
                  Image.asset('images/plus.png'),
                ],
              )
            : Container(
                height: 200, child: Center(child: CircularProgressIndicator())),
      ),
    );
  }
}
