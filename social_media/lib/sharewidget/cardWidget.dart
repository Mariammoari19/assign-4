// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({ Key? key }) : super(key: key);

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
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
    return Scaffold(
      body:
      Column(children: [
          Card(color: Theme.of(context).cardTheme.color,
         child: Padding(
           padding: const EdgeInsets.all(10),
           child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10,),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://th.bing.com/th/id/OIP.2X7awE5-eIPL2LuEl8B_EwHaLH?w=182&h=273&c=7&r=0&o=5&dpr=1.25&pid=1.7"),),
                    ),
                        
                     Column(
                       children: [
                         Text("Anthony George", style: Theme.of(context).textTheme.headline1),
                         Text("@tony_George", style: Theme.of(context).textTheme.headline2),
                       ],
                     ),
                  ],
                ),
                     Row(children: [
                      IconButton(onPressed: (){}, icon:  Icon(Icons.message_rounded)),
                       IconButton(onPressed: (){}, icon:  Icon(Icons.phone)),
                     ]),
           ]
           ),
           Text("the divine light of our work is to make you feel better", 
           style: Theme.of(context).textTheme.bodyText1!.
           copyWith(overflow: TextOverflow.ellipsis),),
           SizedBox(height: 15,),
           Container(
             decoration: BoxDecoration(),
            child: 
             Image.network("https://th.bing.com/th/id/OIP.2X7awE5-eIPL2LuEl8B_EwHaLH?w=182&h=273&c=7&r=0&o=5&dpr=1.25&pid=1.7",
             fit: BoxFit.cover,),
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Row(children: [
                 IconButton(onPressed: (){
                   setState(() {
                    liked();
                   });
                   int valua =2;
                   if(4 % valua == 0){
                     setState(() {
                       isliked = true;
                     });
                   }else{
                     setState(() {
                       isliked = false;
                     });
                   } 
                 }, icon: Icon(
                   isliked
                   ?Icons.favorite_rounded
                   :Icons.favorite_outline,
                   color: Colors.red,)),
                   Text("$likes",style: Theme.of(context).textTheme.bodyText1),
               ],),
             ],
           ),
           Row(children: [
             IconButton(onPressed: (){},
              icon: Icon(Icons.comment_outlined,
               color: Theme.of(context).
               appBarTheme.iconTheme!.color,)
             ),Text("0",style: Theme.of(context).textTheme.bodyText1,),
             IconButton(onPressed: (){},
              icon: Icon(Icons.share_outlined,
               color: Theme.of(context).
               appBarTheme.iconTheme!.color,)
             ),Text("0",style: Theme.of(context).textTheme.bodyText1)
           ],)
           ]
           ),
         ),
       )],),
    );
  }
}