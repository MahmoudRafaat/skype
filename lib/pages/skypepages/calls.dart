import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:untitled3/models/chat.dart';


class Calls extends StatelessWidget{
  @override
  List<Chat> chat=[
    Chat(name:"mahmoud",
        url:"lib/assets/images/Ultras Sur Real Madrid.jpeg",
        message:"hey how are you",
        time:"31/7/2024"),
    Chat(name:"Khalid",
        url:"lib/assets/images/Ultras Sur Real Madrid.jpeg",
        message:"hey how are you",
        time:"30/7/2024"),
    Chat(name:"Mustafa",
        url:"lib/assets/images/Ultras Sur Real Madrid.jpeg",
        message:"hey how are you",
        time:"20/7/2024"),
    Chat(name:"Kareem",
        url:"lib/assets/images/Ultras Sur Real Madrid.jpeg",
        message:"hey how are you",
        time:"20/7/2024"),
    Chat(name:"Raafat",
        url:"lib/assets/images/Ultras Sur Real Madrid.jpeg",
        message:"hey how are you",
        time:"19/7/2024"),
    Chat(name:"Raafat",
        url:"lib/assets/images/Ultras Sur Real Madrid.jpeg",
        message:"hey how are you",
        time:"17/7/2024"),
    Chat(name:"mahmoud",
        url:"lib/assets/images/Ultras Sur Real Madrid.jpeg",
        message:"hey how are you",
        time:"16/7/2024"),
  ];
  Widget build(BuildContext context) {
    return
      ListView(
        children: [
          Container(

            padding: EdgeInsets.all(16),

            child: TextField(

              decoration: InputDecoration(

                labelText: 'Search',

                border: OutlineInputBorder(),

                prefixIcon: Icon(Icons.search),

              ),

            ),

          )
          ,
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0 ,left: 8),
            child: Text("recent calls",style: TextStyle(fontSize: 22,color: Colors.grey),),

          ),
          for(int i=0;i<chat.length;i++)
          Card(

            color: Colors.white,
            child: ListTile(
              leading:CircleAvatar(
                radius: 30,
                backgroundImage:AssetImage(chat[i].url),) ,
              title:Text(chat[i].name,
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold),),
              subtitle:Row(
                children: [
                  Icon(Icons.phone_callback),
                  Text(chat[i].time,
                    style: TextStyle(fontSize: 18),),
                ],
              ),

          ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0 ,left: 8),
            child: Text("people",style: TextStyle(fontSize: 22,color: Colors.grey),),

          ),
          for(int i=0;i<chat.length-1;i++)
            Card(

              color: Colors.white,
              child: ListTile(
                leading:CircleAvatar(
                  radius: 30,
                  backgroundImage:AssetImage(chat[i].url),) ,
                title:Text(chat[i].name,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold),),

              ),
            )
        ],);


  }
}