import 'dart:async';
import 'package:doctor_on_demand/screens/schedule_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BookingScreen extends StatefulWidget{
  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  TextEditingController inputDate =TextEditingController();
  TimeOfDay time =TimeOfDay.now();
TextEditingController timeController = TextEditingController();
   //TimeOfDay selectedTime;  
  //set inputDatetime(String inputDatetime) {}
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
   appBar: AppBar(
    backgroundColor: Color.fromARGB(255, 20, 193, 115),
    title: const Text("Booking Screen"),
    centerTitle: true,
   ),
   body:
   Padding(padding: EdgeInsets.all(20),
   child: Column(
    children: [
    TextField(
    decoration: InputDecoration(
    icon: Icon(Icons.person),
    hintText: "Patient Name"),
    ),
    SizedBox(height: 20,),
    TextField(
     controller: inputDate,
     decoration:  const InputDecoration(
      icon: Icon(Icons.calendar_month_rounded),
      hintText: "Select Date"),
      onTap: ()async {
       DateTime? pickeddate= 
       await showDatePicker 
      (context: context, 
      initialDate:DateTime.now(),
      firstDate:DateTime(2000),
      lastDate:DateTime(2040),
      );
      if(pickeddate !=null){
     String fromattedDate =
     DateFormat('dd MM yyyy').format(pickeddate);
     inputDate.text=fromattedDate;
       
      }
      },
    ),
    SizedBox(height: 20,),
    TextField(
      controller: timeController,
      readOnly: true,
     decoration: InputDecoration(
      icon: Icon(Icons.access_time_filled_rounded),
      hintText: "Select Time"
     ),
     onTap: () async{
     TimeOfDay?   newTime =await  showTimePicker
     (context: context, 
      initialTime: time?? TimeOfDay.now());
       if(newTime!=null&& newTime!=time){
      setState(() {
        time=newTime;
        timeController.text=newTime.format(context);
      });
       }
     }
     
    ),
     SizedBox(height: 60,),
    InkWell(
    onTap: () {
    Navigator.push(context,
     MaterialPageRoute(builder: (context)=> ScheduleScreen()));
    },
    child: Container(
    margin: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
    padding: EdgeInsets.symmetric(vertical:30),
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 61, 182, 121),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Center(
    child: Text("Booking Confirm" ,style: TextStyle(fontSize: 20 ,
    color: Colors.white ,fontWeight: FontWeight.bold),),
    ),
    ),
    )
    ],
    
   ),
   
   ),
  
    );
  
  }
}













































