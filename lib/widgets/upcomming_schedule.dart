import 'package:flutter/material.dart';
class UpcomingSchedule extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: EdgeInsets.symmetric(horizontal: 15),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text("About Doctor", style: TextStyle(fontSize: 25
    ,fontWeight: FontWeight.w500),),
    SizedBox(height: 30,),
    Container(
    padding: EdgeInsets.symmetric(vertical: 4),
    decoration: BoxDecoration(
    color: Color.fromARGB(255, 244, 248, 246),
    borderRadius: BorderRadius.circular(10),
    boxShadow:[
    BoxShadow(
    color: Color.fromARGB(9, 9, 9, 9),
    blurRadius: 4,
    spreadRadius: 2,
    ),
    ]
    ),
    child: SizedBox(
    width: MediaQuery.of(context).size.width,
    child: Column(
    children: [
    ListTile(
    title: Text("Doctor Name" ,style: TextStyle(fontSize: 20),
    ),
    subtitle: Text("ther"),
    trailing: CircleAvatar(
    radius: 25,
    backgroundImage: AssetImage("images/onerr.jpg"),
    ),
    ),
    Padding(padding: EdgeInsets.symmetric(horizontal: 15),
    child: Divider(
    thickness: 1,
    height: 20,
    ),),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Row(children: [
      Icon(Icons.calendar_month,),
     SizedBox(width: 5,),
     Text("12-12-2022"),
      ],
     
    ),
    Row(
    children: [
      Icon(Icons.access_alarm),
      SizedBox(width: 5,),
      Text("10:30Am"),
    ],
    ),
    Row(children: [
    Container(
    padding :EdgeInsets.all(5),
    decoration:BoxDecoration(color:Colors.green,
    shape: BoxShape.circle),
    ),
    SizedBox(width: 5,),
    Text("Confirmed")
    ],),
    ],),
    SizedBox(height: 15,),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    InkWell(
    onTap: () {},
    child: Container(
    width: 150,
    padding: EdgeInsets.symmetric(vertical: 12),
    decoration: BoxDecoration(
    color: Colors.black12,
    borderRadius: BorderRadius.circular(10),
    ),
    child: Center(
      child: Text("Cancel",
    style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
    ),
    ),
    ),
    InkWell(
    onTap: () {},
    child: Container(
    width: 150,
    padding: EdgeInsets.symmetric(vertical: 12),
    decoration: BoxDecoration(
    color: Color(0xff019874),
    borderRadius: BorderRadius.circular(10),
    ),
    child: Center(child: Text("Rescheduling" , style: TextStyle(
    fontSize: 17 ,fontWeight: FontWeight.w500,
    ),),),
    ),
    ),
    ],

    
    ),
    
    
    ],
    ),
    ),
    ),

    ],
  
      ),
  
    );
  }
}