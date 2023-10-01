import 'package:flutter/material.dart';
import 'package:my_quran/Const/Styels.dart';

import '../Const/colors.dart';

class Alsibaha extends StatefulWidget {
   Alsibaha({super.key});

  @override
  State<Alsibaha> createState() => _AlsibahaState();
}

class _AlsibahaState extends State<Alsibaha> {
  int scount = -99;

  int aCount = -33;

  int allaAkbrCount = -66;

  int count = 0;

  String tsbehText = "سبحان الله";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            addTasbeh();
          },
          child: CircleAvatar(
            backgroundColor: kGreen.withOpacity(0.3),
            radius: 100,
            child: Center(
                child: Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: Text(
                "$count",
                style: Styles.textStyle36,
              ),
            )),
          ),
        ),
        Text(
          tsbehText,
          style: Styles.textStyle38,
        )
      ],
    );
  }

  void addTasbeh() {
    setState(() {
      count++;
      aCount++;
      scount++;
      allaAkbrCount++;
      if (count == 33) {
        count = 0;
        if (aCount == 0) {
          tsbehText = "الحمد لله ";
        }
        if (allaAkbrCount == 0) {
          tsbehText = "الله اكبر";
        }
        if (scount == 0) {
          tsbehText = "سبحان الله";
          scount = -99;
          aCount = -33;
          allaAkbrCount = -66;
        }
        //
        // scount = 1;
      }
    });
  }
}
