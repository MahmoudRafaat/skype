import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:untitled3/models/news.dart';


class Today extends StatelessWidget{
  @override
  List<News> news=[
    News(name:"Why Paris Olympians are losing sleep – heat, not enough food, thefts, transport woes",
        url:"lib/assets/images/Ultras Sur Real Madrid.jpeg",
        description:"A BUS ride from the Olympic Village to the Table Tennis Arena takes 45 minutes. And for an Indian boxer, travelling on one of the hottest days of the Games in a non-air-conditioned coach, it felt like a journey to hellThere was a small vent for ventilation but you couldn’t open the windows and hence, it was very suffocating. I was sweating even before I entered the arena,” the athlete, requesting anonymity, said. “It was cooler outside than inside the bus She isn’t the only one complaining and heat is just one of the woes expressed by the elite athletes who have converged here for the Games costing close to 9 billion. Besides the transport headache, Olympians in Paris are losing sleep due to empty stomachs or concerns about their belongings",
        time:"31/7/2024 12:00 AM"),
    News(name:"Why Paris Olympians are losing sleep – heat, not enough food, thefts, transport woes",
        url:"lib/assets/images/Ultras Sur Real Madrid.jpeg",
        description:"A BUS ride from the Olympic Village to the Table Tennis Arena takes 45 minutes. And for an Indian boxer, travelling on one of the hottest days of the Games in a non-air-conditioned coach, it felt like a journey to hellThere was a small vent for ventilation but you couldn’t open the windows and hence, it was very suffocating. I was sweating even before I entered the arena,” the athlete, requesting anonymity, said. “It was cooler outside than inside the bus She isn’t the only one complaining and heat is just one of the woes expressed by the elite athletes who have converged here for the Games costing close to 9 billion. Besides the transport headache, Olympians in Paris are losing sleep due to empty stomachs or concerns about their belongings",
        time:"31/7/2024 12:00 AM"),
    News(name:"Why Paris Olympians are losing sleep – heat, not enough food, thefts, transport woes",
        url:"lib/assets/images/Ultras Sur Real Madrid.jpeg",
        description:"A BUS ride from the Olympic Village to the Table Tennis Arena takes 45 minutes. And for an Indian boxer, travelling on one of the hottest days of the Games in a non-air-conditioned coach, it felt like a journey to hellThere was a small vent for ventilation but you couldn’t open the windows and hence, it was very suffocating. I was sweating even before I entered the arena,” the athlete, requesting anonymity, said. “It was cooler outside than inside the bus She isn’t the only one complaining and heat is just one of the woes expressed by the elite athletes who have converged here for the Games costing close to 9 billion. Besides the transport headache, Olympians in Paris are losing sleep due to empty stomachs or concerns about their belongings",
        time:"31/7/2024 12:00 AM"),
  ];
  Widget build(BuildContext context) {
    return
      ListView(children: [
        Padding(
          padding: const EdgeInsets.all( 8),
          child: Text("Discover",style: TextStyle(fontSize: 22,color: Colors.grey),),

        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10,top: 10),
          child: Column(
            children: [
              for(int i=0;i<news.length;i++)
                Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(news[i].name,style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
                      ),

                      Image.asset(news[i].url,width: 350,height: 350,),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0,left: 200),
                        child: Text(" ${news[i].time}",style: TextStyle(fontSize: 15,color: Colors.black,)),
                      ),

                      Text(news[i].description,style: TextStyle(fontSize: 20,color: Colors.grey,)),

                    ],
                  ),
                ),
            ],
          ),
        ),
      ]
      );


  }
}