import 'package:doctor_on_demand/screens/booking_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class DoctorDetailsScreen extends StatelessWidget{
List imag =[
"onerr.jpg",
"onerr.jpg",
"onerr.jpg",
"onerr.jpg"
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   backgroundColor: Color.fromARGB(255, 52, 164, 136),
   body: SingleChildScrollView(
   child: Column(
  children: [
  SizedBox(height: 50,),
  Padding(padding: EdgeInsets.symmetric( horizontal: 10),
  child: Stack(children: [
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
  InkWell(onTap: () {
    Navigator.pop(context);
  },
  child: Icon(Icons.arrow_back_ios_new ,color: Colors.white,size: 25,),
  ),
InkWell(onTap: () {
   // Navigator.pop(context);
  },
  child: Icon(Icons.more_vert ,color: Colors.white,size: 25,),
  ),
  ],
  ),
  Padding(padding: EdgeInsets.symmetric(vertical: 35),
  child: Column(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
  CircleAvatar(radius: 35,
  backgroundImage: AssetImage("images/onerr.jpg"),),
  SizedBox(height: 15,),
  Text("Dr.  Khitam Salim" , style: TextStyle(fontSize: 20 ,
  fontWeight: FontWeight.w500 ,color: Colors.white),),
    SizedBox(height: 5,),
  Text("Dentist", 
  style: TextStyle(fontSize: 16 ,fontWeight: FontWeight.bold,
  color: Colors.white),),
  SizedBox(height: 4,),
  Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Container(
  padding: EdgeInsets.all(10),
  decoration: BoxDecoration(
  color: Colors.greenAccent,
  shape: BoxShape.circle
  ),
child: Icon(Icons.call ,size: 25,),
    ),
    SizedBox(width: 20,),
    Container(
  padding: EdgeInsets.all(10),
  decoration: BoxDecoration(
  color: Colors.greenAccent,
  shape: BoxShape.circle
  ),
child: Icon(CupertinoIcons.chat_bubble_2 ,size: 25,),
    ),
  ],
  ),
   SizedBox(height: 20,),
  Container(
    height: MediaQuery.of(context).size.height/1.5,
    width: double.infinity,
    padding: EdgeInsets.only(top: 20,left: 15 ,bottom: 10),
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(10),
      topRight: Radius.circular(10),
      
    ),
    ),
    child: Column(
   crossAxisAlignment: CrossAxisAlignment.start,
   // mainAxisSize: MainAxisSize.max,
    children: [
      Text("About Doctor" ,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
    SizedBox(height: 5,),
    Text("Khitam salim palestinian master in SE may allah bless her ameen",
    style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,
    color: Colors.black54),),
    SizedBox(height: 10,),
    Row(
    children: [
      Text("Reviews" ,
      style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
      SizedBox(width: 10,),
      Icon(Icons.star , color: Colors.amber,),
      Text("4.9"),
      SizedBox(width: 5,),
      Text("(100)" ,
      style: TextStyle(color: const Color.fromARGB(255, 9, 59, 35)),
      ),
      Spacer(),
      TextButton(onPressed: (){}, child: Text("see all")),

    ],
    ),
    SizedBox(height: 160,
    child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 4,
    itemBuilder: (context, index)  {
    return Container(
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.symmetric(vertical: 5),
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        blurRadius: 4,
        spreadRadius: 2,

      ),
    ]
    ),
    child: SizedBox(
    width: MediaQuery.of(context).size.width/1.4,
    child: Column(children: [
      ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage("images/onerr.jpg"),
      ),
      title:Text ("Dr.Doctor Name",style: TextStyle(fontWeight: FontWeight.bold),
      ),
      //subtitle: Text("Great doctor"),
      trailing: Row(
      mainAxisSize: MainAxisSize.min,
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.star , color: Colors.amber,),
      Text("4.9", style: TextStyle(color: Colors.black),)
      ],
      ),
      ),
      SizedBox(height: 5,),
      Padding(padding:const EdgeInsets.symmetric(horizontal: 10),
      child:  Text( maxLines: 2 ,
      overflow: TextOverflow.ellipsis,
      "many thanks for Dr many thanks for Drmany thanks for Drmany thanks for Drmany thanks for Dr"),
       ),
      
    ]),
    
    ),
    
    );
    }
    
    ),
    
    ),

   //Spacer(),
    SizedBox(
      height: 30,
      
    ),
    InkWell(
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context) => BookingScreen()));
    },
    child: Container(
      margin: EdgeInsets.symmetric( horizontal:10 ,vertical: 20),
     // width: MediaQuery.of(context).size.height,
      padding: EdgeInsets.symmetric(vertical: 30 ),
      decoration: BoxDecoration(
        color: Color(0xff164237),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: 
        Text(" Book An Appointment" ,
        style: TextStyle(color: Colors.white ,
        fontWeight: FontWeight.bold ,fontSize: 20) ,),
      ),
      ),
      ),
      
    ],
    ),
  ),
  ],
  
  ),),
 
  ]),
  
  ),
  ],
   ),
     ),
    );
    
  }
}