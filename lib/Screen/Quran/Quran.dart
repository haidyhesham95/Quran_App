import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:my_quran/Widget/list-Ink.dart';
import '../../Const/colors.dart';
import 'List.dart';
import 'quran_details_screen.dart';


class Suar extends StatelessWidget {
  const Suar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back,color: kGreen,),
          ),
        backgroundColor: Colors.transparent,
        title: Center(child: Text('القرآن الكريم', style: GoogleFonts.amiriQuran( fontWeight: FontWeight.bold,
            color: kGreen,fontSize: 23)),)
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: quranDetails.length,
              itemBuilder: ( context,  index) {
                return List_Ink(
                  onTap: () {
                    Navigator.pushNamed(context, QuranDetailsScreen.routeName,
                        arguments: QuranModel(
                          index,
                          quranDetails[index]['name'],
                        ));
                  },
                  data:quranDetails[index]['name'],
                  text: quranDetails[index]['id'].toString(),);


              },


            ),
          )

        ],
      ),
    );
  }
}
