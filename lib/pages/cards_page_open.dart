import 'dart:math';

import 'package:flutter/material.dart';

import '../models/teams.dart';
import '../api/api.dart';
import '../res/styles.dart';
import '../widgets/app_bar.dart';
import '../widgets/teams/team_conteiner.dart';

class CardsPageOpen extends StatefulWidget {
  const CardsPageOpen({super.key});

  @override
  State<CardsPageOpen> createState() => _CardsPageOpenState();
}

class _CardsPageOpenState extends State<CardsPageOpen> {
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
                  'Card       '.toUpperCase(),
                  style: h24w400,
                ),
                Expanded(child: SizedBox())
              ],
            ),

            SizedBox(height: 50),
            // MatchCard(),
            Image.asset('images/g${1 + Random().nextInt(8)}.png'),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
