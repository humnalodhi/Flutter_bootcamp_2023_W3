import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _email = TextEditingController();
  final _pass = TextEditingController();

  signUp(){
    try{
      FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email.text, password: _pass.text);
      Navigator.pop(context);
    }on FirebaseException catch(e){
      print(e.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Signup', style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 32),),
              TextField(
                controller: _email,
              ),
              TextField(
                controller: _pass,
              ),
              SizedBox(height: 15,),
              ElevatedButton(onPressed: (){
                signUp();
              }, child: Text('Signup', style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),)),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an Account? ", style: GoogleFonts.lato(fontSize: 16),),
                  GestureDetector(onTap: (){
                    Navigator.pop(context);
                  },
                      child: Text('Login', style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
