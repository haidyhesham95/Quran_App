import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_quran/Const/colors.dart';
import 'package:my_quran/Screen/Azkar/Azkar.dart';
import '../../Alsibaha/Alsibaha.dart';
import '../Ahadyth/Ahadyth.dart';
import 'dart:ui';

import '../Quran/Quran.dart';
import 'Bloc/theme_cubit.dart';
class Home_Page extends StatefulWidget implements PreferredSizeWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
  @override
  Size get preferredSize => throw UnimplementedError();
}

class _Home_PageState extends State<Home_Page> {

  @override
  Widget build(BuildContext context) {
    ThemeCubit theme = BlocProvider.of<ThemeCubit>(context, listen: false);

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(


          leading:  IconButton(
            onPressed: (){
              Navigator.push (context, MaterialPageRoute  (
                  builder:(context)=> Suar()));

            },
              icon: Icon(FlutterIslamicIcons.quran2,size: 25,color: kGreen,)),
          actions:  [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: IconButton(
                  onPressed: (){
                    theme.changeTheme();
              },
               icon:  Icon(Icons.dark_mode_outlined,color: kGreen,)),
            ),
          ],
          iconTheme:const IconThemeData(color: kGreen,size: 27) ,
          backgroundColor: Colors.transparent,
          title:  Center(
            child: Text(
              ' Quran',
              style: GoogleFonts.amiriQuran( fontWeight: FontWeight.bold,
                color: kGreen)
          ),
          ),
          bottom:  TabBar(
            dividerColor: Colors.transparent,
            unselectedLabelColor: Colors.grey.withOpacity(0.8),
            labelColor: kGreen.withOpacity(0.999),
            tabs: [
              Tab(
                text: 'أذكار المسلم ',

              ),

              Tab(
                text: 'الأحاديث',
              ),
              Tab(
                text: 'التسابيح',
              ),


            ],
          ),
        ),

       body:  TabBarView(
         children: [
           Azkar(),
           Ahadyth(),
           Alsibaha(),



         ],
       ),


      ),
    );
  }
}
