  

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:social_media/views/homPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Social Media",
      theme: ThemeData(
        // ignore: prefer_const_constructors
        appBarTheme: AppBarTheme(
          centerTitle: false,
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(
            size: 20,
            color: Colors.black
          ),
          titleTextStyle: TextStyle(color:Colors.black,
          fontSize: 20, fontWeight: FontWeight.bold)
        ),
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          headline1: TextStyle(color: Colors.black,fontSize: 20,),
          headline2: TextStyle(color: Colors.grey,
          fontSize: 15,),
          bodyText1: TextStyle(color: Colors.black, fontSize: 15,)
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(elevation: 10,
        backgroundColor: Colors.blue,),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: Colors.grey,
        elevation: 5, selectedIconTheme: IconThemeData(color: Colors.black, size: 25),
        unselectedIconTheme: IconThemeData(color: Colors.black,size: 20),
        selectedLabelStyle: TextStyle(color: Colors.blue, fontSize: 20),
        unselectedLabelStyle: TextStyle(color: Colors.blue, fontSize: 20),),
        cardTheme: CardTheme(
           color:Colors.white)
        
      ),
      darkTheme: ThemeData.dark().copyWith(
          appBarTheme: AppBarTheme(
            centerTitle: false,
          backgroundColor: Colors.black,
          elevation: 0,
          iconTheme: IconThemeData(
            size: 20,
            color: Colors.black
          ),
          titleTextStyle: TextStyle(color:Colors.black,
          fontSize: 20, fontWeight: FontWeight.bold)
        ),
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          headline1: TextStyle(color: Colors.white,fontSize: 20,),
          headline2: TextStyle(color: Colors.blue,
          fontSize: 15,),
          bodyText1: TextStyle(color: Colors.white, fontSize: 15,)
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(elevation: 10,
        backgroundColor: Colors.blue,),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: Colors.black26,
        elevation: 5, selectedIconTheme: IconThemeData(color: Colors.white, size: 25),
        unselectedIconTheme: IconThemeData(color: Colors.white,size: 20),
        selectedLabelStyle: TextStyle(color: Colors.blue, fontSize: 20),
        unselectedLabelStyle: TextStyle(color: Colors.grey, fontSize: 20),),
        cardTheme: CardTheme(
           color:Colors.white),
      ),
      home: HomeView(),
  );
  }
} 