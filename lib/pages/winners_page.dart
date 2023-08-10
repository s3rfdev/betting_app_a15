import 'package:flutter/material.dart';

import '../models/teams.dart';
import '../api/api.dart';
import '../res/styles.dart';
import '../widgets/app_bar.dart';
import '../models/standings/standings.dart' as stan;
import '../widgets/winners/win_row.dart';

class WinnersPage extends StatefulWidget {
  const WinnersPage({super.key});

  @override
  State<WinnersPage> createState() => _WinnersPageState();
}

class _WinnersPageState extends State<WinnersPage> {
  stan.Standings? table;

  @override
  void initState() {
    super.initState();
    () async {
      var tmp = await SofaApi.getStandingsTotal(325, 48982);
      setState(() {
        table = tmp;
      });
    }();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey,
      appBar: myAppBar(),
      body: SingleChildScrollView(
        child: table != null
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      BackButton(color: Colors.white),
                      Expanded(child: SizedBox()),
                      Text(
                        'winners chart       '.toUpperCase(),
                        style: h24w400,
                      ),
                      Expanded(child: SizedBox())
                    ],
                  ),
                  SizedBox(height: 30),
                  Image.network(
                      'https://api.sofascore1.com/api/v1/unique-tournament/17015/image/dark'),
                  SizedBox(height: 20),
                  Text(
                    'UEFA Europa Conference League'.toUpperCase(),
                    style: h16w700.copyWith(color: yellow),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                      color: yellow1,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '2022 - 2023',
                          style: h13w700,
                        ),
                        Icon(Icons.arrow_drop_down, color: Colors.white),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  WinRow(),
                  Divider(color: yellow1),
                  ...table!.standings![0].rows!.map(
                    (e) {
                      // print(e.)
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: InkWell(
                          onTap: () {
                            //  Get.to(TeamPage(id: e.team!.id!, name: e.team!.name!));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                  width: 25,
                                  child: Image.network(
                                      'https://api.sofascore1.com/api/v1/team/${e.team!.id}/image')),
                              SizedBox(width: 5),
                              SizedBox(
                                  width: 130,
                                  child: Text(e.team!.name!, style: h14w600)),
                              SizedBox(
                                  width: 70,
                                  child: Text(e.matches.toString(),
                                      style: h13w700)),
                              SizedBox(
                                  width: 70,
                                  child:
                                      Text(e.wins.toString(), style: h13w700)),
                              SizedBox(
                                  width: 70,
                                  child: Text(e.points.toString(),
                                      style: h13w700)),
                            ],
                          ),
                        ),
                      );
                    },
                  ).toList(),
                ],
              )
            : Container(
                height: 200, child: Center(child: CircularProgressIndicator())),
      ),
    );
  }
}
