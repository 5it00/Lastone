import 'package:doctor_on_demand/cubits/login_cubit.dart';
import 'package:doctor_on_demand/screens/signup_screen.dart';
import 'package:doctor_on_demand/shared/cash_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'network/local/cash_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';
class LoginScreen extends StatefulWidget{
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
  return Material(
  color: Color.fromARGB(255, 36, 193, 156),
  child: SingleChildScrollView(
  child: SafeArea(child: Column(
  children: [
  SizedBox(height: 10),
  Padding(padding: EdgeInsets.all(20),
  child: Image.asset("images/doctors.png"),
  ),
  SizedBox(height:0.5),
  Padding(padding: EdgeInsets.all(12),
  child: TextField(
  decoration: InputDecoration(
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide( width:3,color: Colors.white)),
    focusedBorder: OutlineInputBorder(
    borderSide: BorderSide( width:3,color: Colors.white)),
  border: OutlineInputBorder(),
  label: Text("Enter Username or Email",style: TextStyle(color: Colors.white),),
  prefixIcon: Icon(Icons.person ,color: Colors.white,),
  ),
  ),
  ),
  Padding(padding: EdgeInsets.all(12),
  child: TextField(
    
    obscureText: passToggle ?true: false,
  decoration: InputDecoration(
  enabledBorder: OutlineInputBorder(
  borderSide: BorderSide(width:3,color: Colors.white)),
  focusedBorder: OutlineInputBorder(
  borderSide: BorderSide(width:3,color: Colors.white)),
  border: OutlineInputBorder(),
  label: Text("Enter Your Password",style: TextStyle(color: Colors.white),),
  prefixIcon: Icon(Icons.lock ,color: Colors.white,),
  suffixIcon: InkWell(onTap:(){
  if(passToggle==true){
    passToggle=false;
  }else{
    passToggle=true;
  }
  setState(() {
  });
  },
  child: passToggle ?Icon(CupertinoIcons.eye_slash_fill ,color: Colors.white,):
  Icon(CupertinoIcons.eye_fill ,color: Colors.white,),
  )
  ),),
  ),
  SizedBox(height: 1),
  Padding(
    padding: const EdgeInsets.all(10),
    child: SizedBox(
      width: double.infinity,
      child: Material(
      color: Color.fromARGB(255, 15, 99, 82),
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
      onTap: ()async {
      // Navigator.push(
      // context,
      // MaterialPageRoute(
      // builder: (context) => LoginScreen(),
      // ));
       await CashHelper.removeData(key: 'uId');
      if (formKey.currentState!.validate()) {
      LoginCubit.get(context).userLogin(
      email: emailController.text,
        password: passwordController.text,
         );
        }
      },
      child: Center(
        child: Padding(
        padding:
        EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        child:Text("Log in",
        style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),
        ),
        
        ),
      ) ),
      ),
    ),
  ),
  SizedBox(height: 2),
  Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text("Don't have an account ?",
    style: TextStyle(color: const Color.fromARGB(255, 20, 17, 17) ,fontSize: 20,)),
    TextButton(onPressed: (){
      Navigator.push(
      context,
      MaterialPageRoute(
      builder: (context) => SignUpScreen(),
      ));
    }, child: Text(" create an account ", 
    style: TextStyle(color: Colors.white ,fontSize: 18), )),
  ],

  ),


  ],
  )),
  ),



  );
    
  }
}