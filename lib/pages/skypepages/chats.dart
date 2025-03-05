import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/models/chat.dart';


class Chats extends StatelessWidget{
  @override


  List<Chat> chat=[
    Chat(name:"mahmoud",
        url:"lib/assets/images/Ultras Sur Real Madrid.jpeg",
        message:"hey how are you",
        time:"12:50pm"),
    Chat(name:"Khalid",
        url:"lib/assets/images/Ultras Sur Real Madrid.jpeg",
        message:"hey how are you",
        time:"11:50pm"),
    Chat(name:"Mustafa",
        url:"lib/assets/images/Ultras Sur Real Madrid.jpeg",
        message:"hey how are you",
        time:"10:50pm"),
    Chat(name:"Kareem",
        url:"lib/assets/images/Ultras Sur Real Madrid.jpeg",
        message:"hey how are you",
        time:"1:50pm"),
    Chat(name:"Raafat",
        url:"lib/assets/images/Ultras Sur Real Madrid.jpeg",
        message:"hey how are you",
        time:"2:50pm"),
    Chat(name:"mahmoud",
        url:"lib/assets/images/Ultras Sur Real Madrid.jpeg",
        message:"hey how are you",
        time:"10:50pm"),
    Chat(name:"mahmoud",
        url:"lib/assets/images/Ultras Sur Real Madrid.jpeg",
        message:"hey how are you",
        time:"10:50pm"),
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
                child: Text("recent chat",style: TextStyle(fontSize: 22,color: Colors.grey),),

              ),

              Card(

                color: Colors.white,
                child: ListTile(
                  leading:CircleAvatar(
                    radius: 30,
                    backgroundImage:AssetImage(chat[chat.length-1].url),) ,
                  title:Text(chat[chat.length-1].name,
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold),),
                  subtitle:Text(chat[chat.length-1].message,
                    style: TextStyle(fontSize: 18),),
                  trailing:Text(chat[chat.length-1].time,
                    style: TextStyle(fontSize: 12),) ,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0 ,left: 8),
                child: Text("all chat",style: TextStyle(fontSize: 22,color: Colors.grey),),

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
                    subtitle:Text(chat[i].message,
                      style: TextStyle(fontSize: 18),),
                    trailing:Text(chat[i].time,
                      style: TextStyle(fontSize: 12),) ,
                  ),
                )
            ],);


  }
}