import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Const/Styels.dart';
import '../../Const/colors.dart';
import 'Map.dart';

class Azkar_Massa extends StatelessWidget {
  Azkar_Massa({super.key,});
  List<dynamic>contentData=azkar[0]['أذكار المساء'];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/Untitled design.png',height: double.infinity,width: double.infinity,fit: BoxFit.fill,opacity:AlwaysStoppedAnimation(0.9),),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back,color: kGreen,),
            ),
            backgroundColor: Colors.transparent,
            title: Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 22),
                child: Text(
                  contentData[0]['category'],
                  style: Styles.textStyle35,
                ),
              ),
            ),
          ),


          body: Center(
            child: Container(
              height: 655,
              width: 320,
              decoration: BoxDecoration(
                  color: kGreen.withOpacity(0.3),
                  borderRadius: const BorderRadius.all(Radius.circular(12))),
              child: ListView.separated(
                separatorBuilder: (context, index) =>Divider(thickness: 1,color: kGreen,),
                itemCount: contentData.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(contentData[index]['content'],style: GoogleFonts.amiriQuran(color:Colors.blueGrey.shade800,fontSize: 22,fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
