import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_2023_w3/auth/forget_pass.dart';
import 'package:flutter_bootcamp_2023_w3/auth/home.dart';
import 'package:flutter_bootcamp_2023_w3/auth/signup.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _email = TextEditingController();
  final _pass = TextEditingController();

  Login() {
    try {
      FirebaseAuth.instance
          .signInWithEmailAndPassword(email: _email.text, password: _pass.text);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    } on FirebaseException catch (e) {
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
              Text(
                'Login',
                style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 32),
              ),
              TextField(
                controller: _email,
              ),
              TextField(
                controller: _pass,
              ),
              SizedBox(height: 10),
              Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgetPass()));
                  }, child: Text('Forget Password', style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold),))),
              SizedBox(height: 15),
              ElevatedButton(
                  onPressed: () {
                    Login();
                  },
                  child: Text('Login', style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold))),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an Account? ", style: GoogleFonts.lato(fontSize: 16),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupScreen()));
                      },
                      child: Text('Signup', style: GoogleFonts.lato(fontSize: 16, color: Colors.blue, fontWeight: FontWeight.bold),)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
