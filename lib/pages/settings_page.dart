import 'package:flutter/material.dart';

import '../res/styles.dart';
import '../widgets/app_bar.dart';

class SettignsPage extends StatefulWidget {
  const SettignsPage({super.key});

  @override
  State<SettignsPage> createState() => _SettignsPageState();
}

class _SettignsPageState extends State<SettignsPage> {
  bool on1 = true;
  bool on2 = true;
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
                  'Settings        '.toUpperCase(),
                  style: h24w400,
                ),
                Expanded(child: SizedBox())
              ],
            ),
            const SizedBox(height: 30),
            Text(
              '    Notifications \nof match results'.toUpperCase(),
              style: h16w700,
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () => setState(() {
                on1 = !on1;
              }),
              child: Image.asset(on1 ? 'images/on.png' : 'images/off.png'),
            ),
            const SizedBox(height: 50),
            Text(
              '                Notification \nof changes in the standings'
                  .toUpperCase(),
              style: h16w700,
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () => setState(() {
                on2 = !on2;
              }),
              child: Image.asset(on2 ? 'images/on.png' : 'images/off.png'),
            ),
          ],
        ),
      ),
    );
  }
}
