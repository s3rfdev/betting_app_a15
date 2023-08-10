import 'dart:math';
import 'package:flutter/material.dart';

import '../models/teams.dart';
import '../api/api.dart';
import '../res/styles.dart';
import '../widgets/app_bar.dart';
import '../widgets/teams/team_conteiner.dart';

class TeamsPage extends StatefulWidget {
  const TeamsPage({super.key});

  @override
  State<TeamsPage> createState() => _TeamsPageState();
}

class _TeamsPageState extends State<TeamsPage> {
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
                        'Teams       '.toUpperCase(),
                        style: h24w400,
                      ),
                      Expanded(child: SizedBox())
                    ],
                  ),
                  SizedBox(height: 40),
                  ...teams!.teamsMap.values
                      .toList()
                      .reversed
                      .take(33 + Random().nextInt(100))
                      .toList()
                      .reversed
                      .map((e) => TeamContainer(
                            id: e.id,
                            name: e.name,
                          ))
                      .toList(),
                ],
              )
            : Container(
                height: 200, child: Center(child: CircularProgressIndicator())),
      ),
    );
  }
}
