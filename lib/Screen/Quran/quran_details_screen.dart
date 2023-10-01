import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Const/Styels.dart';
import '../../Const/colors.dart';

class QuranDetailsScreen extends StatefulWidget {
  QuranDetailsScreen({
    super.key,
  });
  static const String routeName = 'quranDetailsScreen';

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  List<String> quranDetails = [];


  @override
  Widget build(BuildContext context) {
    var quran = ModalRoute.of(context)?.settings.arguments as QuranModel;
    if (quranDetails.isEmpty) {
      loadSura(quran.index);
    }
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
                  " سورة ${quran.name} ",
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
              child: ListView.builder(
                itemCount: quranDetails.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(quranDetails[index],style: GoogleFonts.amiriQuran(color:Colors.blueGrey.shade800,fontSize: 22,fontWeight: FontWeight.bold),),
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

  void loadSura(int index) async {
    String file =
        await rootBundle.loadString('assets/quran_files/${index + 1}.txt');
    //quranDetails.addAll(contant.split("\n"));
    List<String> suraLines = file.split("\n");


    for (int i = 0; i < suraLines.length; i++) {
      String line = suraLines[i];
      String modifiedLine = "${line.trimRight()} (${1 + i})";
      quranDetails.add(modifiedLine);
    }
    setState(() {});
  }
}

class QuranModel {
  int index;
  String name;
  QuranModel(this. index,this.name
      );
}
