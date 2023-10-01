import 'package:flutter/material.dart';
import 'package:my_quran/Screen/Azkar/Ad3yia_A.dart';
import 'package:my_quran/Screen/Azkar/Ad3yia_Q.dart';
import 'package:my_quran/Screen/Azkar/Azkar_Astikaz.dart';
import 'package:my_quran/Screen/Azkar/Azkar_Massa.dart';
import 'package:my_quran/Screen/Azkar/Main_Azz.dart';
import 'package:my_quran/Screen/Azkar/Azkar_Saba7.dart';
import 'Azkar_Noom.dart';

class Azkar extends StatelessWidget {
   Azkar({super.key,
  });

  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.only(top:50, right: 20, left: 20),
      child: Column(

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>Azkar_Saba7()));

                },
                  child: MainAzzz(text:  'أذكار الصباح', image: 'assets/images/1.png',)),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>Azkar_Astikaz()));

                  },
                  child: MainAzzz(text:  'أذكار الاستيقاظ', image: 'assets/images/2.png',))
            ],
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>Azkar_noom()));

                  },
                  child: MainAzzz(text:  'أذكار النوم', image: 'assets/images/moon.png',)),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>Azkar_Massa()));

                  },
                  child: MainAzzz(text:  'أذكار المساء', image: 'assets/images/evening.png',))
            ],
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>Ad3yia_A()));

                  },
                  child: MainAzzz(text:  'أدعية الأنبياء', image: 'assets/images/5.png',)),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>Ad3yia_Q()));

                  },
                  child: MainAzzz(text:  'أدعية قرآنية', image: 'assets/images/3.png',))
            ],
          ),


        ],


      ),
    );
  }
}
