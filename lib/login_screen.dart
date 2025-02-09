import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shuaalapp/signup_screen.dart';
//import 'package:login_ui_design/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }
final _formKey=GlobalKey<FormState>();
  final TextEditingController emailController=new TextEditingController();
  final TextEditingController passwordController=new TextEditingController();

  initWidget() {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                  color: new Color(0xEEEEEEEE),
                  gradient: LinearGradient(colors: [(new  Color(0xEEEEEEEE)), new Color(0xEEEEEEEE)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                  )
              ),

              child: Column(
                children: [
                  Container(

                    child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Image.asset(
                                "images/topimg.png",
                                height: 300,
                                width: 420,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20, top: 20),
                              alignment: Alignment.bottomRight,
                              child: Center(
                                child: Text(
                                  "Welcome back",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                    ),
                  ),

                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 20, right: 20, top: 70),
                    padding: EdgeInsets.only(left: 20, right: 20),
                    height: 54,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey[200],
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: Color(0xffEEEEEE)
                        ),
                      ],
                    ),
                    child: TextField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      onSubmitted: (String value){
                         emailController.text=value;
                      },
                      cursorColor: Color(0xffF5591F),
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.email,
                          color: Color(0xffF5591F),
                        ),
                        hintText: "Enter Email",
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),


                  ),

                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                    padding: EdgeInsets.only(left: 20, right: 20),
                    height: 54,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xffEEEEEE),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 20),
                            blurRadius: 100,
                            color: Color(0xffEEEEEE)
                        ),
                      ],
                    ),
                    child: TextField(
                      controller: passwordController,
                      obscureText: true,
                      onSubmitted: (String value){
                        passwordController.text=value;
                      },
                      cursorColor: Color(0xffF5591F),
                      decoration: InputDecoration(
                        focusColor: Color(0xffF5591F),
                        icon: Icon(
                          Icons.vpn_key,
                          color: Color(0xffF5591F),
                        ),
                        hintText: "Enter Password",
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        // Write Click Listener Code Here
                      },
                      child: Text("Forget Password?"),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      // Write Click Listener Code Here.
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 20, right: 20, top: 70),
                      padding: EdgeInsets.only(left: 20, right: 20),
                      height: 54,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [(new  Color(0xffF5591F)), new Color(0xffF2861E)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight
                        ),
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey[200],
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 50,
                              color: Color(0xffEEEEEE)
                          ),
                        ],
                      ),
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't Have Any Account?  "),
                        GestureDetector(
                          child: Text(
                            "Register Now",
                            style: TextStyle(
                                color: Color(0xffF5591F)
                            ),
                          ),
                          onTap: () {
                            // Write Tap Code Here.
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpScreen(),
                                )
                            );
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
        )
    );
  }
}