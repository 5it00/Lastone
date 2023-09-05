import 'package:doctor_on_demand/screens/login_screen.dart';
import 'package:doctor_on_demand/widgets/nav_bar_roots.dart';
import 'package:doctor_on_demand/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Material(
  color: Color.fromARGB(255, 6, 199, 154),
  child: Container(
  width: MediaQuery.of(context).size.width,
  height: MediaQuery.of(context).size.height,
  padding: EdgeInsets.all(10),
  child: Column(
  children: [
  SizedBox(height: 15),
  Align(
  alignment: Alignment.centerRight,
  child: TextButton(
  onPressed: () {
  Navigator.push
  (context, MaterialPageRoute(builder: (context) =>NavBarRoots()));
  },
  child: Text(
  "SKIP",
  style: TextStyle(
  color: Colors.white,
  fontSize: 20,
  ),
  ),
  ),
  ),
  // SizedBox()
  // Align(alignment: Alignment.centerLeft,
  // child: Image.asset("images/plus.png") ),
  SizedBox(
  height: 30,
  ),
  Padding(
  padding: EdgeInsets.all(20),
  child: Image.asset("images/doctors.png"),
  ),
  SizedBox(
  height: 30,
  ),
  Text(
  "Doctor On Demand",
  style: TextStyle(
  color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold,letterSpacing: 1, wordSpacing: 2,
  ),
  ),
  SizedBox(height: 10),
  Text("Appoint Your Doctor",
  style: TextStyle(
  color: Colors.white,fontSize: 18, fontWeight: FontWeight.w400,
  ),
  ),
  SizedBox(height: 30),
  Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
  Material(
  color: Color.fromARGB(255, 2, 60, 48),
  borderRadius: BorderRadius.circular(10),
  child: InkWell(
  onTap: () {
  Navigator.push(
  context,
  MaterialPageRoute(
  builder: (context) => LoginScreen(),
  ));
  },
  child: Padding(
  padding:
  EdgeInsets.symmetric(vertical: 15, horizontal: 40),
  child: Text("Log in",
  style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),
  ),
  ) ),
  ),
  Material(
  color: Color.fromARGB(255, 2, 60, 48),
  borderRadius: BorderRadius.circular(10),
  child: InkWell(
  onTap: () {
   Navigator.push(context, MaterialPageRoute(builder: (context) =>SignUpScreen()));
  },
  child: Padding(
  padding:
  EdgeInsets.symmetric(vertical: 15, horizontal: 40),
  child: Text(
  "Sign Up",
  style: TextStyle(
  color: Colors.white,
  fontSize: 22,
  fontWeight: FontWeight.bold),
  ),
  ),
  ),
  ),
  ],
  ),
  ],
  ),
  ),
  );
  }
}
