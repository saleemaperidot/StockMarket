import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tradingapp/constants/appconstants.dart';

import '../controllers/auth.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage('assets/investo.png')),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Investo",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(text: 'Monitor', style: textStyle),
                    TextSpan(text: " "),
                    TextSpan(
                      text: 'Your Portfolio and Track Market',
                      style: textStyle.copyWith(color: Colors.grey),
                    ),
                    TextSpan(text: " "),
                    TextSpan(text: 'Trends', style: textStyle),
                  ]),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Join our community of traders and investors to share ideas,statergies,and insights that can help you achieve your financial goals.",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Container(
                          width: 20,
                          height: 20,
                          child: Center(
                            child: CircularProgressIndicator(),
                          ));
                      Get.find<AuthController>().login();
                    },
                    child: Image(
                        width: 60,
                        height: 60,
                        image: AssetImage(
                          'assets/google.png',
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image(
                      width: 60,
                      height: 60,
                      image: AssetImage('assets/fb.png')),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(230, 60),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                      onPressed: () {},
                      child: Text(
                        "Let's go",
                        style: TextStyle(color: Colors.black),
                      )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "Dont have an account?",
                      style: TextStyle(color: Colors.grey, fontSize: 15)),
                  TextSpan(text: "  SignUp", style: TextStyle(fontSize: 20))
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
