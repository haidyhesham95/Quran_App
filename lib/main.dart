import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_quran/Screen/Ahadyth/HadythDetails.dart';
import 'Screen/Home/Bloc/theme_cubit.dart';
import 'Screen/Quran/quran_details_screen.dart';
import 'Splash.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [BlocProvider(create: (coontext) => ThemeCubit())],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeCubit theme = BlocProvider.of<ThemeCubit>(context, listen: true);

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            // theme: ThemeData(
            //   brightness: Brightness.light,
            //   colorScheme: ColorScheme.fromSeed(seedColor: kGreen),
            //   useMaterial3: true,
            //
            // ),
            theme: theme.isDark ? ThemeData.dark() : ThemeData.light(),

            // darkTheme: ThemeData(
            //   appBarTheme: AppBarTheme(
            //
            //   ),
            //
            //     brightness: Brightness.dark
            //
            // ),

            routes: {
            HadythDetails.routeName:(context)=>HadythDetails(),

              QuranDetailsScreen.routeName: (context) => QuranDetailsScreen(
                )
            },
            home: Splash(),



    );
  }
}

