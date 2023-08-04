// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/login.dart';
import 'package:flutter_application_2/shared/constants.dart';
import 'package:flutter_application_2/shared/my_textfiled.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 247, 247),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(33),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyTextFild(
                      hinttext: "Enter your username:",
                      ispassword: false,
                      textInputType: TextInputType.text),
                  SizedBox(
                    height: 40,
                  ),
                  MyTextFild(
                      hinttext: "Eamil :",
                      ispassword: false,
                      textInputType: TextInputType.emailAddress),
                  SizedBox(
                    height: 40,
                  ),
                  MyTextFild(
                      hinttext: "password:",
                      ispassword: true,
                      textInputType: TextInputType.text),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Sing up",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(scondry),
                        padding: MaterialStateProperty.all(EdgeInsets.all(19)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)))),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Dont have Account ?",
                          style: TextStyle(fontSize: 18)),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Text(
                          "Sing IN",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
