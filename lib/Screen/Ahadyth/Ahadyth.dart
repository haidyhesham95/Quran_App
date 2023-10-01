
import 'package:flutter/material.dart';
import 'package:my_quran/Screen/Ahadyth/HadythDetails.dart';
import '../../Widget/list-Ink.dart';
import 'listttt.dart';

class Ahadyth extends StatelessWidget {
   Ahadyth({super.key,});

   @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ListView.builder(
        itemCount: ahadythDetails.length,
        itemBuilder: (BuildContext context, int index) {
          return List_Ink(
            onTap: () {
              Navigator.pushNamed(context, HadythDetails.routeName,
                  arguments: HadythModel(
                      index,
                      ahadythDetails[index]['name']));

            },
            data:ahadythDetails[index]['name'],
            text: ahadythDetails[index]['id'].toString(),
          );
        },
      ),
    );
  }
}

