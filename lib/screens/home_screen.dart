import 'package:doctor_on_demand/screens/appointment_screen.dart';
import 'package:flutter/material.dart';

import 'booking_screen.dart';
class HomeScreen extends StatelessWidget{
  List symptoms =[
    "Urgent",
    "Cool",
     "ok",
     "palestine",
  ];
  List imgs=[
    " onerr.jpg",
    " onerr.jpg",
    "onerr.jpg",
    "onerr.jpg"
  ];
  @override
  Widget build(BuildContext context) {
  
 return SingleChildScrollView(
 padding: EdgeInsets.only(top:40),
 child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Padding(padding: EdgeInsets.symmetric(horizontal: 15),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Text("Hello Khitam" ,style: TextStyle(fontSize: 30 ,fontWeight: FontWeight.bold),
     ),
    CircleAvatar(
    radius: 25,
    backgroundImage: AssetImage("images/splash.jpg"),
      ),
    ],
    ),
    ),
   SizedBox(height: 30,),
   Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    InkWell(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(
      builder:((context) => BookingScreen()) ));
      
    },
    child: Container(
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
    BoxShadow(
   color: Colors.black,
   blurRadius: 6,
   spreadRadius: 4,
    ),
  
    ],
    ),
    child: Column(
    crossAxisAlignment :CrossAxisAlignment.start,
    children: [
    Container(
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
    color: Colors.greenAccent,
    shape: BoxShape.circle,
    ),
    child: Icon(Icons.add,
    color: Colors.white,
    size: 40,),
    ),
    SizedBox(height: 20,),
    Text("Clinic Visit",
    style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
    SizedBox(height: 5,),
    Text("Make an appointment" ,), 
    ],
    ),
    ),
    ),
   InkWell(
    onTap: () {
    Navigator.push(context, MaterialPageRoute(
      builder:((context) => HomeScreen()) ));
    },
    child: Container(
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
    BoxShadow(
   color: Colors.black,
   blurRadius: 6,
   spreadRadius: 4,
    ),
  
    ],
    ),
    child: Column(
    crossAxisAlignment :CrossAxisAlignment.start,
    children: [
    Container(
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
    color: Colors.greenAccent,
    shape: BoxShape.circle,
    ),
    child: Icon(Icons.home_filled,
    color: Colors.white,
    size: 40,),
    ),
    SizedBox(height: 20,),
    Text("Home Visit",
    style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
    SizedBox(height: 5,),
    Text("Call  The Home Doctor" ,), 
    ],
    ),
    ),
    ),
    ],
   ),
   SizedBox(height: 25,),
   Padding(padding: EdgeInsets.only(left: 15),
   child: Text("What's Up?" ,style: TextStyle(fontSize: 23,fontWeight: FontWeight.w500,
   color:Colors.black54 ),),
   ),
  SizedBox(height: 70,
  child: ListView.builder(  shrinkWrap:true,
  scrollDirection: Axis.horizontal,
  itemCount: symptoms.length,
   itemBuilder: (context,index){
    return Container(
    margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
    padding: EdgeInsets.symmetric(horizontal: 25),
    decoration: BoxDecoration(
    color: Color.fromARGB(255, 250, 253, 253),
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
    BoxShadow(
    //color: Colors.black12,
    blurRadius: 6,
    spreadRadius: 2,
    ),
    ],
     ),
    child: Center(
    child: Text(symptoms[index],
    style: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    //color: Colors.black
    ),),
    ),
    );
  }),),
  SizedBox(height: 16,),
  Padding(padding: EdgeInsets.only(left: 16),
  child: Text("Clinic Doctors",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w400),
  ),),
  GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
  itemCount: 4 ,shrinkWrap: true,
 physics: NeverScrollableScrollPhysics(),
 itemBuilder: (context, index) {
return InkWell(onTap: () {
Navigator.push(context, 
MaterialPageRoute(builder:(context)=>DoctorDetailsScreen()));
},
child: Container(
margin: EdgeInsets.all(10),
padding: EdgeInsets.symmetric(vertical: 15),
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(10),
color: Color.fromARGB(255, 255, 255, 255),
boxShadow: [
BoxShadow(
blurRadius: 4,
spreadRadius: 2,
),
],
),
child: Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
children: [
CircleAvatar(
radius: 35,
//backgroundImage: AssetImage("images/${imgs[index]}"),
),
Text("Dr.Doctor Name" , 
style: TextStyle(color: Colors.deepPurple,
fontSize: 15,
fontWeight: FontWeight.w300) ,),
Text("Therapiest",style: TextStyle(color: Colors.black),
),
Row(
mainAxisSize: MainAxisSize.min,
mainAxisAlignment: MainAxisAlignment.center,
children: [
  Icon(
Icons.star,
color: Colors.amber,
  ),
],
),
],),
),);
 }, ),
  ],
 ),
    );
  }
}