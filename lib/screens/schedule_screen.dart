import 'package:flutter/material.dart';

import '../widgets/upcomming_schedule.dart';
class ScheduleScreen extends StatefulWidget{
  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  int  _buttonIndex=0;
  final _scheduleWigets =[
  UpcomingSchedule(),
   Container(),
   Container(),
   Container(),

   
  ];
  @override
  Widget build(BuildContext context) {
   
  return Scaffold(
  backgroundColor: Color.fromARGB(255, 143, 219, 200), 
  body: Padding(padding: EdgeInsets.only(top: 40),
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  Padding(padding: EdgeInsets.symmetric(horizontal: 15),
  child: Text("Schedule" , style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),),
  ),
  SizedBox(height: 20,),
  Container(
     height: 70,
   // width: 100,
    padding: EdgeInsets.all(5),
 margin: EdgeInsets.symmetric(horizontal: 10),
decoration: BoxDecoration(color: Color.fromARGB(255, 18, 107, 85),
 borderRadius: BorderRadius.circular(10)),
 child: Row(
mainAxisAlignment:MainAxisAlignment.center,
children: [
  InkWell(
    onTap: () {
      setState(() {
        _buttonIndex=0;
      });
    },
    child: Container(
    padding: EdgeInsets.symmetric(vertical: 4,horizontal: 10),
    decoration: BoxDecoration(
    color: _buttonIndex==0? Color.fromARGB(255, 16, 163, 55):const Color.fromARGB(0, 224, 180, 180),
    borderRadius: BorderRadius.circular(10),
    ),
    child: Text("Upcomming" ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,
    color: _buttonIndex==0? Colors.white:Colors.transparent,)
    ),
    ),
  ),
  InkWell(
    onTap: () {
      setState(() {
        _buttonIndex=1;
      });
    },
    child: Container(
    padding: EdgeInsets.symmetric(vertical: 4,horizontal: 10),
    decoration: BoxDecoration(
    color: _buttonIndex==1? Color.fromARGB(255, 16, 163, 55):const Color.fromARGB(0, 224, 180, 180),
    borderRadius: BorderRadius.circular(10),
    ),
    child: Text("Completed" ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,
    color: _buttonIndex==1? Colors.white:Colors.transparent,)
    ),
    ),
  ),
  InkWell(
    onTap: () {
      setState(() {
        _buttonIndex=2;
      });
    },
    child: Container(
    padding: EdgeInsets.symmetric(vertical: 4,horizontal: 10),
    decoration: BoxDecoration(
    color: _buttonIndex==2? Color.fromARGB(255, 16, 163, 55):const Color.fromARGB(0, 224, 180, 180),
    borderRadius: BorderRadius.circular(10),
    ),
    child: Text("Cancelled" ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,
    color: _buttonIndex==2? Colors.white:Colors.transparent,)
    ),
    ),
  ),
],

 ),
  ),
  SizedBox(height: 30,),
  _scheduleWigets[_buttonIndex]

  ],
  ),
  ),
  

    );
  }
}
    
