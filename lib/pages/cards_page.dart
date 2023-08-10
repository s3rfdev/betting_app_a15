import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../res/styles.dart';
import '../widgets/app_bar.dart';
import 'cards_page_open.dart';

class CardsPage extends StatefulWidget {
  const CardsPage({super.key});

  @override
  State<CardsPage> createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
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
                  'LootBox       '.toUpperCase(),
                  style: h24w400,
                ),
                Expanded(child: SizedBox())
              ],
            ),

            SizedBox(height: 120),
            // MatchCard(),
            InkWell(
              onTap: () => Get.to(CardsPageOpen()),
              child: Image.asset('images/01.png'),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
