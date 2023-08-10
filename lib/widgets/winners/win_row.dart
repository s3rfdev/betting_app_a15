import 'package:flutter/material.dart';

import '../../res/styles.dart';

class WinRow extends StatelessWidget {
  const WinRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(
            width: 50,
          ),
          SizedBox(width: 130, child: Text('Club', style: h14w600)),
          SizedBox(width: 70, child: Text('MP', style: h14w600)),
          SizedBox(width: 70, child: Text('W', style: h14w600)),
          SizedBox(width: 70, child: Text('Pts', style: h14w600)),
        ],
      ),
    );
  }
}
