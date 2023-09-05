import 'package:doctor_on_demand/screens/home_screen.dart';
import 'package:doctor_on_demand/screens/schedule_screen.dart';
import 'package:doctor_on_demand/screens/settings_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/mesg_screen.dart';
class NavBarRoots extends StatefulWidget{
  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {
 int _selectedIndex =0;
 final _screens=[
//Home Screen
HomeScreen(),
//messages
MessagesScreen(),
//schedule 
ScheduleScreen(),
//settings
//
SettingsScreen(),

 ];
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
    backgroundColor: Color(0xff96E7D3),
    body: _screens[_selectedIndex ],
    bottomNavigationBar: Container(
    height: 80,
    child: BottomNavigationBar(
    backgroundColor:Color.fromARGB(255, 6, 199, 154),
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.white,
    unselectedItemColor: Color.fromARGB(255, 18, 2, 2),
    selectedLabelStyle: TextStyle(fontSize: 20,
    fontWeight: FontWeight.bold,
    ),
    currentIndex: _selectedIndex,
    onTap: (index){
     setState(() {
       _selectedIndex=index;
     });
    },
    items: [
      BottomNavigationBarItem(icon: Icon(Icons.home_filled),
      label: "Home"),
      BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_2),
      label: "Messages"),
      BottomNavigationBarItem(icon: Icon(Icons.calendar_month),
      label: "Schedule"),
      BottomNavigationBarItem(icon: Icon(Icons.settings),
      label: "Settings"),
    ],
    ),
    ),
    );
  }
}