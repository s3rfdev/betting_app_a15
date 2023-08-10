import 'dart:math';
import 'package:intl/intl.dart';

import 'package:flutter/material.dart';

import '../../models/teams.dart';

class MatchCard extends StatelessWidget {
  MatchCard({
    super.key,
    required this.team1,
    required this.team2,
    required this.league,
  });
  Team team1;
  Team team2;
  String league;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 356,
      height: 80,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 356,
              height: 90,
              child: Image.asset(
                'images/box.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            left: 20.86,
            top: 4.41,
            child: Container(
              width: 297.84,
              height: 66.19,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 33.09,
                    child: Container(
                      width: 108.11,
                      height: 22.06,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 1.10,
                            child: SizedBox(
                              width: 69.50,
                              height: 19.86,
                              child: Text(
                                team1.name,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Gotham Pro',
                                  fontWeight: FontWeight.w400,
                                  height: 1.20,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 86.04,
                            top: -0,
                            child: Container(
                              width: 22.06,
                              height: 22.06,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://api.sofascore1.com/api/v1/team/${team1.id}/image"),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 104.80,
                    top: 0,
                    child: SizedBox(
                      width: 101.49,
                      height: 19.86,
                      child: Text(
                        league,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'Gotham Pro',
                          fontWeight: FontWeight.w700,
                          height: 1.80,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 117.93,
                    top: 44.12,
                    child: Container(
                      width: 75.21,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.50,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 116.14,
                    top: 23.59,
                    child: SizedBox(
                      width: 80,
                      height: 19,
                      child: Text(
                        DateFormat('dd MMM, yyyy')
                            .format(DateTime.now().add(Duration(days: 2))),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Gotham Pro',
                          fontWeight: FontWeight.w700,
                          height: 1.50,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 145.61,
                    top: 46.33,
                    child: SizedBox(
                      width: 39.71,
                      height: 19.86,
                      child: Text(
                        '1${Random().nextInt(9)}:00',
                        style: TextStyle(
                          color: Color(0xFFF9DC1C),
                          fontSize: 12,
                          fontFamily: 'Gotham Pro',
                          fontWeight: FontWeight.w700,
                          height: 1.50,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 205.18,
                    top: 33.09,
                    child: Container(
                      width: 92.66,
                      height: 22.06,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 35.30,
                            top: 1.10,
                            child: SizedBox(
                              width: 57.36,
                              height: 19.86,
                              child: Text(
                                team1.name,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Gotham Pro',
                                  fontWeight: FontWeight.w400,
                                  height: 1.20,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 22.06,
                              height: 22.06,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://api.sofascore1.com/api/v1/team/${team2.id}/image"),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 147.72,
            top: 52.95,
            child: Container(
              width: 12.13,
              height: 12.13,
              child: Stack(children: [
                //- ,
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
