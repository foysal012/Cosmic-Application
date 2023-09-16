import 'package:cosmic/screen/authentication/signin_page_screen.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {

  TextEditingController emailController = TextEditingController();

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
                    Text("Forgot Password",
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

                    SizedBox(height: 10,),

                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SigninPageScreen()));
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
                          child: Text("Recover",
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
