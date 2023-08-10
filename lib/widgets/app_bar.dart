import 'package:flutter/material.dart';

myAppBar() {
  return AppBar(
    title: Image.asset('images/icon.png'),
    leading: null,
    automaticallyImplyLeading: false,
    centerTitle: true,
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [
            Color(0xFF546264),
            Color(0xFF363938),
          ],
        ),
      ),
    ),
  );
}

// Container(
//   width: 390,
//   height: 49,
//   decoration: BoxDecoration(
//     gradient: LinearGradient(
//       begin: Alignment(0.00, -1.00),
//       end: Alignment(0, 1),
//       colors: [Color(0xFF546264), Color(0xFF363938)],
//     ),
//   ),
// )