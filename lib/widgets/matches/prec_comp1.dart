import 'package:flutter/material.dart';

class PrevComp1 extends StatelessWidget {
  const PrevComp1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 353,
      height: 43.02,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 353,
              height: 43.02,
              decoration: BoxDecoration(
                color: Color(0xFF757779),
                borderRadius: BorderRadius.circular(13),
              ),
            ),
          ),
          Positioned(
            left: 175,
            top: 0,
            child: Container(
              width: 177.60,
              height: 43.02,
              decoration: BoxDecoration(
                color: Color(0xFF626262),
                borderRadius: BorderRadius.circular(13),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(2, 0),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 216,
            top: 14,
            child: SizedBox(
              width: 108,
              height: 18,
              child: Text(
                'COMPLETED',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontFamily: 'Gotham Pro',
                  fontWeight: FontWeight.w700,
                  height: 1.23,
                ),
              ),
            ),
          ),
          Positioned(
            left: 37,
            top: 14,
            child: SizedBox(
              width: 100,
              height: 18,
              child: Text(
                'PREMATCH',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontFamily: 'Gotham Pro',
                  fontWeight: FontWeight.w700,
                  height: 1.23,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
