import 'package:cosmic/screen/authentication/forgot_password_screen.dart';
import 'package:cosmic/screen/authentication/signup_page_screen.dart';
import 'package:cosmic/screen/navigationbar/bottom_navigationbar.dart';
import 'package:flutter/material.dart';

class SigninPageScreen extends StatefulWidget {
  const SigninPageScreen({Key? key}) : super(key: key);

  @override
  State<SigninPageScreen> createState() => _SigninPageScreenState();
}

class _SigninPageScreenState extends State<SigninPageScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("images/w3.jpg"),
          fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
                flex: 5,
                child: Container(
                  child: Image.asset("images/w1.jpg",
                  height: 80,
                    width: 200,
                  ),
                )
            ),

            Expanded(
                flex: 15,
                child: Container(
                  padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 16
                  ),
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.black26,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sign in",
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      ),

                      SizedBox(height: 10,),

                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: "NeilArm30@gmail.com",

                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: Color(0xffFFFFFF),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: Color(0xffFFFFFF),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),

                        ),
                      ),

                      SizedBox(height: 18,),

                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: "password",

                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: Color(0xffFFFFFF),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: Color(0xffFFFFFF),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),

                        ),
                      ),

                      SizedBox(height: 10,),

                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ForgotPasswordScreen()));
                        },
                        child: Text("Forgot Password?",
                        style: TextStyle(
                          color: Colors.lightBlue,
                        ),
                        ),
                      ),

                      SizedBox(height: 10,),

                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BottomNaigationBarPageScreen()));
                        },
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: LinearGradient(
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                                colors: [
                                  Colors.purple,
                                  Colors.deepPurpleAccent,
                                  Colors.blue,
                                  Colors.lightBlue,
                                  Colors.lightBlueAccent
                                ]
                            )
                          ),
                          child: Center(
                            child: Text("Sign in",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 22,
                            ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 10,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Divider(
                            color: Colors.pink,
                            thickness: 10,
                            height: 5,
                            indent: 2,
                            endIndent: 4,
                          ),

                          Text("or Sign in using",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                          ),

                          Divider(
                            color: Colors.red,
                            thickness: 10,
                            height: 5,
                            indent: 2,
                            endIndent: 4,
                          ),
                        ],
                      ),

                      SizedBox(height: 5,),

                      Container(
                        height: 40,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: (){},
                              child: Image.asset("images/w15.png",
                              height: 40,
                                width: 40,
                              ),
                            ),

                            SizedBox(width: 5,),

                            InkWell(
                              onTap: (){},
                              child: Image.asset("images/w16.png",
                                height: 40,
                                width: 40,
                              ),
                            ),

                            SizedBox(width: 5,),

                            InkWell(
                              onTap: (){},
                              child: Image.asset("images/w17.png",
                                height: 40,
                                width: 40,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 5,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account?",
                          style: TextStyle(
                            color: Colors.grey
                          ),
                          ),
                          TextButton(onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignupPageScreen()));
                          },
                              child: Text("Sign Up",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyanAccent,
                              ),
                              )
                          )
                        ],
                      )
                    ],
                  ),
                ),
            ),


          ],
        ),
      ),

    );
  }
}
