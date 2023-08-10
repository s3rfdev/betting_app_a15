import 'dart:math';

import 'package:flutter/material.dart';

import '../models/teams.dart';
import '../api/api.dart';
import '../res/styles.dart';
import '../widgets/app_bar.dart';
import '../widgets/matches/matche_card.dart';
import '../widgets/matches/matche_card1.dart';
import '../widgets/matches/prec_comp1.dart';
import '../widgets/matches/prev_comp.dart';
import '../widgets/teams/team_conteiner.dart';

class MatchesPage extends StatefulWidget {
  const MatchesPage({super.key});

  @override
  State<MatchesPage> createState() => _MatchesPageState();
}

class _MatchesPageState extends State<MatchesPage> {
  Teams? teams;
  bool comp = true;
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
                        'Matches       '.toUpperCase(),
                        style: h24w400,
                      ),
                      Expanded(child: SizedBox())
                    ],
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () => setState(() {
                      comp = !comp;
                    }),
                    child: comp ? PrevComp() : PrevComp1(),
                  ),
                  SizedBox(height: 40),
                  // MatchCard(),
                  for (int i = 0; i < 3 + Random().nextInt(6); i++)
                    comp
                        ? MatchCard(
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
                          )
                        : MatchCard1(
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
                  // ...teams.teamsMap.values
                  //     .toList()
                  //     .reversed
                  //     .take(100)
                  //     .map((e) => TeamContainer(
                  //           id: e.id,
                  //           name: e.name,
                  //         ))
                  //     .toList(),
                ],
              )
            : Container(
                height: 200, child: Center(child: CircularProgressIndicator())),
      ),
    );
  }
}
