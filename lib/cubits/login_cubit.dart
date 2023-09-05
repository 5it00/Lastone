import 'package:doctor_on_demand/cubits/login_states.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class LoginCubit extends Cubit<LoginStates>{
  LoginCubit(super.initialState);
  static LoginCubit get (context)=> BlocProvider.of(context);
  String? googleUserName ;
  bool isAdmin = false;
  void userLogin({
    required String email,
    required String password,
  }){
 emit(LoginLoadingState());
    FirebaseAuth.instance .signInWithEmailAndPassword(
      email: email,
      password: password,
    ).then((value) {
  if (email=='admin@gmail.com' && password=='admin1234') {
  print(value.user!.email);
  print(value.user!.uid);
  print('Admin Login');
  emit(AdminLoginSuccessState(value.user!.uid));
  isAdmin = true;
  } else {
  print(value.user!.email);
  print(value.user!.uid);
  print('user Login');
  emit(LoginSuccessState(value.user!.uid));
  isAdmin = false;
      }
   }).catchError((error) {
    emit(LoginErrorState(error));
    print('Invalid Login ....    $error');
    });
    }
 IconData suffix = Icons.visibility_off_outlined;
  bool isPassword = true;

  void shopChangPasswordVisibility() {
    isPassword = !isPassword;
    suffix = isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(ChangPasswordVisibilityState());
  }
  }
 

  
  