import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SettingsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
//have to wrap it with widgettttttttttttttttttttttttttttttttttttttttt
return Padding(padding: EdgeInsets.only(top:50,left: 20,right: 20),

child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text("Settings" , style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400),),
SizedBox(height: 30,),
ListTile(
leading: CircleAvatar(
radius: 30,
backgroundImage:AssetImage("images/onerr.jpg") ,
),
title: Text("Dr." ,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
subtitle: Text("profile"),
),
Divider(height: 50,),
ListTile(
onTap: (){},
leading: Container(
padding: EdgeInsets.all(10),
decoration: BoxDecoration(
color: Colors.black45,
shape: BoxShape.circle,
),
child: Icon(CupertinoIcons.person,color: Color.fromARGB(255, 26, 237, 2),
size: 35,),
),
title: Text("profile",style: TextStyle(fontWeight: FontWeight.w400,
fontSize: 20),),
trailing: Icon(Icons.arrow_forward_ios_rounded),
),
SizedBox(height: 20,),
ListTile(
onTap: (){},
leading: Container(
padding: EdgeInsets.all(10),
decoration: BoxDecoration(
color: Colors.black45,
shape: BoxShape.circle,
),
child: Icon(Icons.notification_add,color: Colors.blueAccent,
size: 35,),
),
title: Text("Notifications",style: TextStyle(fontWeight: FontWeight.w400,
fontSize: 20),),
trailing: Icon(Icons.arrow_forward_ios_rounded),
),
SizedBox(height: 20,),
ListTile(
onTap: (){},
leading: Container(
padding: EdgeInsets.all(10),
decoration: BoxDecoration(
color: Colors.black45,
shape: BoxShape.circle,
),
child: Icon(Icons.privacy_tip,color: Colors.white,
size: 35,),
),
title: Text("Privacy",style: TextStyle(fontWeight: FontWeight.w400,
fontSize: 20),),
trailing: Icon(Icons.arrow_forward_ios_rounded),
),
SizedBox(height: 20,),
ListTile(
onTap: (){},
leading: Container(
padding: EdgeInsets.all(10),
decoration: BoxDecoration(
color: Colors.black45,
shape: BoxShape.circle,
),
child: Icon(Icons.settings,color: Colors.orange,
size: 35,),
),
title: Text("General",style: TextStyle(fontWeight: FontWeight.w400,
fontSize: 20),),
trailing: Icon(Icons.arrow_forward_ios_rounded),
),
SizedBox(height: 20,),
ListTile(
onTap: (){},
leading: Container(
padding: EdgeInsets.all(10),
decoration: BoxDecoration(
color: Colors.black45,
shape: BoxShape.circle,
),
child: Icon(Icons.info,color: Colors.green,
size: 35,),
),
title: Text("About Us",style: TextStyle(fontWeight: FontWeight.w400,
fontSize: 20),),
trailing: Icon(Icons.arrow_forward_ios_rounded),
),
Divider(height: 40,),
ListTile(
onTap: (){},
leading: Container(
padding: EdgeInsets.all(10),
decoration: BoxDecoration(
color: Colors.black45,
shape: BoxShape.circle,
),
child: Icon(Icons.logout,color: Color.fromARGB(255, 231, 89, 24),
size: 35,),
),
title: Text("Log Out",style: TextStyle(fontWeight: FontWeight.w400,
fontSize: 20),),
trailing: Icon(Icons.arrow_forward_ios_rounded),
),

],
),
);
  }
}