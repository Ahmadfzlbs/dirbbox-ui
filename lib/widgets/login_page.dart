import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../service/auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: Get.width,
                child: Image.asset(
                  "assets/images/bg.png",
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: Get.height * 0.12),
                    Container(
                      height: 200,
                      width: 200,
                      child: Image.asset(
                        "assets/images/logo.png",
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Welcome to",
                      style: TextStyle(color: Color(0xFF22215B), fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Dirbbox",
                      style: TextStyle(
                          color: Color(0xFF22215B),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Best cloud storage platform for all\nbusiness and individuals to\nmanage there data\n\nJoin For Free.",
                      style: TextStyle(color: Color(0xFF7B7F9E), fontSize: 15),
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFF567DF4),
                            fixedSize: Size(Get.width, 50)
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/svg/lock.svg", width: 40),
                            SizedBox(width: 3),
                            Text(
                              "Sign In With Credentials",
                              style: TextStyle(color: Color(0xFFDCE3FC),),
                            ),
                          ],
                        )),
                    SizedBox(height: 30),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFFF0F1F6),
                            fixedSize: Size(Get.width, 50)
                        ),
                        onPressed: () async {
                          await AuthServices().signInwithGoogle();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/svg/google.svg", width: 32),
                            SizedBox(width: 10),
                            Text(
                              "Sign In With Google",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
