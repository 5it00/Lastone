import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

 
class Authar extends ChangeNotifier{
  final FirebaseAuth _firebaseAuth =FirebaseAuth.instance;
  Future<UserCredential> 
  signInWithEmailAndPassword(String email ,  String password) async{
  try{
    //sign in 
  UserCredential userCredential=
  await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    return userCredential;
  }
  //cacth any error
  on FirebaseAuthException catch(e){
    throw Exception(e.code);
  }
  }
  // create a new user
  Future<UserCredential> creanp(String email , password) async{
    try{
      UserCredential userCredential = 
      await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      return userCredential;
    }
    on FirebaseAuthException catch(e){
    throw Exception(e.code);
    }
    
  }
}