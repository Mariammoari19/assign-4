

import 'package:flutter/material.dart';
import 'package:social_media/sharewidget/cardWidget.dart';


class HomeView extends StatefulWidget {
   HomeView({ Key? key }) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 0;
  int likes = 0;
  bool isliked = false;

  void liked(){
    setState(() {
      likes++;

    });
  }


  get title => null;

  
  void selectItem(index){
  setState(() {
    _currentIndex =index;
  });
  }

  @override
  Widget build(BuildContext context) {
    var favorite_outline;
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){}, icon: Icon
          (Icons.camera_alt, color: Theme.of(context).
          appBarTheme.iconTheme?.color,)),
          title: Text("DoChart", style: Theme.of
          (context).appBarTheme.titleTextStyle,),
          actions: [
            // ignore: prefer_const_constructors
            CircleAvatar(backgroundImage:
            const NetworkImage("https://th.bing.com/th/id/OIP.2X7awE5-eIPL2LuEl8B_EwHaLH?w=182&h=273&c=7&r=0&o=5&dpr=1.25&pid=1.7") 
            ),
          ],
       ),
       floatingActionButton: FloatingActionButton
       (onPressed: (){}, child: Icon(Icons.add),
       backgroundColor: Theme.of(context).
       floatingActionButtonTheme.backgroundColor),
       bottomNavigationBar: BottomNavigationBar(
         currentIndex: _currentIndex,
         onTap: selectItem,
          backgroundColor:
        Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        selectedIconTheme: Theme.of(context).bottomNavigationBarTheme.selectedIconTheme,
        unselectedIconTheme: Theme.of(context).bottomNavigationBarTheme.unselectedIconTheme,
        selectedLabelStyle: Theme.of(context).bottomNavigationBarTheme.selectedLabelStyle,
        unselectedLabelStyle: Theme.of(context).bottomNavigationBarTheme.unselectedLabelStyle, 
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.phone), label: "Call"),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined ),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.message_rounded), label: "Message")
    
       ],),
       body: CardWidget(),
       
       )
       );
    
      
    
  }
}