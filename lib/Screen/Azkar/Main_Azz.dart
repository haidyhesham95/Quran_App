import 'package:flutter/material.dart';
import 'package:my_quran/Const/Styels.dart';

import '../../Const/colors.dart';

class MainAzzz extends StatelessWidget {
  const MainAzzz({super.key, required this.text, required this.image});
 final String text;
 final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135,
      width: 150,
      decoration: BoxDecoration(
          color: kgray,
          borderRadius: BorderRadius.circular(8)
      ),
      child: Column(
        children: [
          Container(
              child: Image.asset(
                image,
                fit: BoxFit.fill, height: 105,
                width: 150,)
          ),
          Container(
              height: 30,
              width: 150,
              decoration: BoxDecoration(
                  color: kGreen,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(8),bottomLeft: Radius.circular(8))
              ),
              child: Center(
                  child:
                  Text(
                   text,

                    textAlign: TextAlign.center,
                  ))

          )

        ],
      ),
    );
  }
}
