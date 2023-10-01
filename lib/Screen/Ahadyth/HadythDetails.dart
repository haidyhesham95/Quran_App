import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Const/Styels.dart';
import '../../Const/colors.dart';

class HadythDetails extends StatefulWidget {
   HadythDetails({super.key});

static const String routeName = 'HadythDetails';


  @override
  State<HadythDetails> createState() => _HadythDetailsState();
}

class _HadythDetailsState extends State<HadythDetails> {
  List<String> ahadythDetails = [];

  @override
  Widget build(BuildContext context) {
    var hadyth = ModalRoute.of(context)?.settings.arguments as HadythModel;
    if (ahadythDetails.isEmpty) {
      loadHadyth(hadyth.index);
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
                  "  ${hadyth.name} ",
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
                itemCount: ahadythDetails.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(ahadythDetails[index],style: GoogleFonts.amiriQuran(color:Colors.blueGrey.shade800,fontSize: 22,fontWeight: FontWeight.bold),),
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

  void loadHadyth(int index) async {
    String contant =
    await rootBundle.loadString('assets/hadeth/h${index + 1}.txt');

    ahadythDetails.addAll(contant.split("\n"));
    setState(() {});
  }
}



class HadythModel {
  int index;
  String name;
  HadythModel(this. index,this.name
      );
}
