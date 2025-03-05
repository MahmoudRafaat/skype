
import 'package:flutter/material.dart';
import 'package:untitled3/models/user.dart';
import 'package:untitled3/pages/login.dart';
import 'package:untitled3/pages/skypepages/calls.dart';
import 'package:untitled3/pages/skypepages/chats.dart';
import 'package:untitled3/pages/skypepages/contacts.dart';
import 'package:untitled3/pages/skypepages/today.dart';

class SkypeHome extends StatelessWidget {
late User user;
SkypeHome(this.user);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: Drawer(

          backgroundColor: Colors.blue,
          child: ListView(
            children: [

              UserAccountsDrawerHeader(accountName: Text("${user.name}"),
                decoration: BoxDecoration(
                    color:  Colors.blue
                ),
                accountEmail: Text("${user.email}"),
                currentAccountPicture: CircleAvatar(
                  radius: 50,
                  backgroundImage:AssetImage("lib/assets/images/Ultras Sur Real Madrid.jpeg"),),

              ),
              ListTile(
                title: Text("Account",style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.supervised_user_circle,color: Colors.white,),
              ),
              ListTile(
                title: Text("Help",style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.help,color: Colors.white,),
              ),
              ListTile(
                title: Text("Setting",style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.settings,color: Colors.white,),
              ),
              ListTile(
                title: Text("Logout",style: TextStyle(color: Colors.white),),
                trailing: InkWell(
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (b){
                      return LoginPage();

                      }));
                    },
                    child: Icon(Icons.logout,color: Colors.white,)),

              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color(0xFF8DD3E0),

          title: Column(
            children: [
              Text(user.name,style: TextStyle(fontSize:20 ,color: Colors.blueAccent),),

            ],
          ),
          actions: [Icon(Icons.more_horiz,color: Colors.blue,)],
          bottom:
          TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.blue,
            tabs: [
              Tab(
                text :"Chats",
                icon: Icon(Icons.chat,size: 30),
              ),
              Tab(
                text :"Calls",
                icon: Icon(Icons.video_call,size: 35),
              ),
              Tab(
                text :"Contacts",
                icon: Icon(Icons.contacts,size: 30,),
              ),
              Tab(
                text :"Today",
                icon: Icon(Icons.book,size: 30),
              ),

            ],


          ),
        ),
        body: TabBarView(children: [
          Chats(),
          Calls(),
          Contacts(),
          Today(),
        ],


        ),
      ),
    );
  }
}
