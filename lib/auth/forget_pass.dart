import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_2023_w3/auth/login.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPass extends StatefulWidget {
  const ForgetPass({Key? key}) : super(key: key);

  @override
  State<ForgetPass> createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
  final _email = TextEditingController();
  ForgetPassword(){
    try{
      FirebaseAuth.instance.sendPasswordResetEmail(email: _email.text);
      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
    }on FirebaseAuthException catch(e){
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
                'Forget Password',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              TextField(
                controller: _email,
              ),
              SizedBox(height: 15,),
              ElevatedButton(onPressed: (){
                ForgetPassword();
              }, child: Text('Forget Password', style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),)),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Another Try? ',
                    style: GoogleFonts.lato(fontSize: 16),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      child: Text(
                        'Login',
                        style: GoogleFonts.lato(
                            color: Colors.blue,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
