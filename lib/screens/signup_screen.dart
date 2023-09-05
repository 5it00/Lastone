import 'package:doctor_on_demand/cubits/resgister_cubit.dart';
import 'package:doctor_on_demand/cubits/resgister_states.dart';
import 'package:doctor_on_demand/screens/login_screen.dart';
import 'package:doctor_on_demand/shared/comp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:provider/provider.dart';
class SignUpScreen extends StatefulWidget{
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController =TextEditingController();
  final passwordController = TextEditingController();
  
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
  return BlocProvider(
  create: (BuildContext context) => RegisterCubit(),
  child: BlocConsumer<RegisterCubit, RegisterState>(
  listener: (context, state) {
  if (state is CreateUserSuccessState) {
  navigateAndFinish(context: context, widget: LoginScreen());
  print('registered Successfully \nLogin Now');
  showToast(
  text: 'Successfully Registered \nLogin Now!!',
  state: ToastStates.WARNING,
   );
  }
 if (state is RegisterErrorState) {
 print(" Register Errorrrrr   ${state.error.toString()}");
 showToast(
 text: state.error.toString(),
  state: ToastStates.ERROR,
   );
  }
 if (state is CreateUserErrorState) {
print(" Create User Error...   ${state.error.toString()}");
showToast(
text: state.error.message,
state: ToastStates.ERROR,
          );
        }
  },
  builder:(context, state) {
  return Scaffold(
  body: Center(
  //Color.fromARGB(255, 255, 255, 255),
  child: SingleChildScrollView(
  child: SafeArea(child: Column(
  children: [
 SizedBox(height: 1,),
  Padding(padding: EdgeInsets.all(5),
  child: Image.asset("images/istooks.png"),
  
  ),
  SizedBox(height: 15),
  Padding(padding: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
  child: TextField(
  decoration: InputDecoration(
  enabledBorder: OutlineInputBorder(
  borderSide: BorderSide(color: const Color.fromARGB(255, 155, 240, 158),width: 3)),
  focusedBorder: OutlineInputBorder(
  borderSide: BorderSide(color: Colors.green ,width: 3)),
  border: OutlineInputBorder(),
  
  label:Text("Enter Your Full Name.",
  style: TextStyle(color: Color.fromARGB(255, 16, 209, 23)),),
  prefixIcon: Icon(Icons.person ,color: Colors.green),
  ),
  controller: nameController,),
  ),
  Padding(padding: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
  child: TextField(
  decoration: InputDecoration(
  enabledBorder: OutlineInputBorder(
  borderSide: BorderSide(color: const Color.fromARGB(255, 155, 240, 158),width: 3)),
  focusedBorder: OutlineInputBorder(
  borderSide: BorderSide(color: Colors.green ,width: 3)),
  border: OutlineInputBorder(),
  label: Text("Enter Your Email.",style: TextStyle(color: Color.fromARGB(255, 16, 209, 23)),),
  prefixIcon: Icon(Icons.email ,color: Colors.green),
  ),
  controller: emailController,
  ),
  ),
  Padding(padding: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
  child: TextField(
  decoration: InputDecoration(
  enabledBorder: OutlineInputBorder(
  borderSide: BorderSide(color: const Color.fromARGB(255, 155, 240, 158),width: 3)),
  focusedBorder: OutlineInputBorder(
  borderSide: BorderSide(color: Colors.green ,width: 3)),
  border: OutlineInputBorder(),
  label: Text("Enter Your Phone Number.",style: TextStyle(color: Color.fromARGB(255, 16, 209, 23)),),
  prefixIcon: Icon(Icons.phone ,color: Colors.green),
  ),
  ),
  ),
  
  Padding(padding: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
  child: TextField(
  obscureText: passToggle ?true: false,
  decoration: InputDecoration(
  enabledBorder: OutlineInputBorder(
  borderSide: BorderSide(color: const Color.fromARGB(255, 155, 240, 158),width: 3)),
  focusedBorder: OutlineInputBorder(
  borderSide: BorderSide(color: Colors.green ,width: 3)),
  border: OutlineInputBorder(),
  label: Text("Enter Your Password.",style: TextStyle(color: Color.fromARGB(255, 16, 209, 23)),),
  prefixIcon: Icon(Icons.lock ,color: Colors.green),
  suffixIcon: InkWell(onTap:(){
  if (passToggle ==true){
  passToggle =false;
  }else{
  passToggle =true;
  }
  setState(() {
  });
  },
  child: passToggle ? Icon(CupertinoIcons.eye_slash_fill,color: Colors.green,):
  Icon(CupertinoIcons.eye_fill ,color: Colors.green, ),
  ),
  ),
  controller: passwordController,),
  ),
  Padding(padding: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
  child: TextField(
  obscureText: passToggle ?true: false,
  decoration: InputDecoration(
  enabledBorder: OutlineInputBorder(
  borderSide: BorderSide(color: const Color.fromARGB(255, 155, 240, 158),width: 3)),
  focusedBorder: OutlineInputBorder(
  borderSide: BorderSide(color: Colors.green ,width: 3)),
  border: OutlineInputBorder(),
  label: Text("Confirm Your Password.",style: TextStyle(color: Color.fromARGB(255, 16, 209, 23)),),
  prefixIcon: Icon(Icons.lock ,color: Colors.green),
  suffixIcon: InkWell(onTap:(){
  if (passToggle ==true){
  passToggle =false;
  }else{
  passToggle =true;
  }
  setState(() {
  });
  },
  child: passToggle ? Icon(CupertinoIcons.eye_slash_fill,color: Colors.green,):
  Icon(CupertinoIcons.eye_fill ,color: Colors.green, ),
  ),
  ),
  ),
  ),
  SizedBox(height: 2,),
  Padding(padding: EdgeInsets.all(10),
  child: SizedBox(
  width: double.infinity,
  child: Material(
  color: const Color.fromARGB(255, 69, 222, 148),
  borderRadius: BorderRadius.circular(10),
 child: InkWell(
  onTap: () {
      // Navigator.push(
      // context,
      // MaterialPageRoute(
      // builder: (context) => LoginScreen(),
      // ));
if (formKey.currentState!.validate()) {
  RegisterCubit.get(context).userRegister(
  email: emailController.text,
   password: passwordController.text,
  name: nameController.text,
  // phone: phoneController.text,
 );
}  
fallback: (context) =>
   const Center(child: CircularProgressIndicator());
 },

  child: Center(
  child: Padding(
  padding: EdgeInsets.symmetric(vertical: 15,horizontal: 7),
  child: Text("Create Account" ,
  style: TextStyle(color: Colors.white,
  fontSize: 25 ,fontWeight: FontWeight.bold),)),
  ),
  ),

  ),
  ),

  ),
  SizedBox(height: 2),
  Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text("Already have an account ?",
    style: TextStyle(color: const Color.fromARGB(255, 20, 17, 17) ,fontSize: 20,)),
    TextButton(onPressed: (){
      Navigator.push(
      context,
      MaterialPageRoute(
      builder: (context) => LoginScreen(),
      ));
    }, child: Text(" Sign In ", 
    style: TextStyle(color: Colors.green ,fontSize: 18), )),
  ],
  ),
  ],
  ))
  ),
   ) );
  }));
}
}