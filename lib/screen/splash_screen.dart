import 'dart:async';

import 'package:cosmic/screen/authentication/signin_page_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void forLogin(){
  Timer(Duration(seconds: 1), () {
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SigninPageScreen()));
  });
  }

  @override
  void initState() {
    // TODO: implement initState
    forLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("images/w3.jpg",
          ),
          fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage("images/w1.jpg")),
                border: Border.all(
                  color: Color(0xffFFFFFF),
                  width: 8,
                )
              ),
              //child: Image.asset("images/w1.jpg"),
            ),

            SizedBox(height: 80,),

            Align(
              alignment: Alignment.bottomCenter,
              
              child: Container(
                  margin: EdgeInsets.only(
                    bottom: 10
                  ),
                  child: Image.asset("images/w12.png")),
            )
            
          ],
        ),
      ),

    );
  }
}
