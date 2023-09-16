import 'package:cosmic/widget/data_for_cosmic.dart';
import 'package:cosmic/widget/data_for_cosmic2.dart';
import 'package:flutter/material.dart';

class MorePageScreen extends StatefulWidget {
  const MorePageScreen({Key? key}) : super(key: key);

  @override
  State<MorePageScreen> createState() => _MorePageScreenState();
}

class _MorePageScreenState extends State<MorePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("images/w3.jpg"),fit: BoxFit.cover),
    ),
        child: Column(
          children: [
            Expanded(
              flex: 4,
                child:

                Padding(
                  padding: EdgeInsets.only(
                      left: 15,
                      right: 15
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black54,
                          ),
                          child: Icon(Icons.arrow_back, color: Colors.white,),
                        ),
                      ),

                      InkWell(
                        onTap: (){

                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black54
                            ,
                          ),
                          child: Icon(Icons.favorite_border, color: Colors.white,),
                        ),
                      ),
                    ],
                  ),
                ),
            ),

            Stack(
              children: [
              Expanded(
                flex: 6,
                child: Container(
                  padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 40,
                      bottom: 10
                  ),
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      )
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("${DataForCosmic2.myList2[2].title}",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 10,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          Column(
                            children: [

                              Image(image: AssetImage("${DataForCosmic2.myList2[2].icon1}",
                              ),
                                height: 30,
                                width: 30,
                                color: Colors.white,
                              ),

                              SizedBox(height: 2,),

                              Text("${DataForCosmic2.myList2[2].icon1text}",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),

                              SizedBox(height: 2,),

                              Text("${DataForCosmic2.myList2[2].icon1value}",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(height: 22,),

                              Image(image: AssetImage("${DataForCosmic2.myList2[2].icon4}",
                              ),
                                height: 30,
                                width: 30,
                                color: Colors.white,
                              ),

                              SizedBox(height: 2,),

                              Text("${DataForCosmic2.myList2[2].icon4text}",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),

                              SizedBox(height: 2,),

                              Text("${DataForCosmic2.myList2[2].icon4value}",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),


                            ],
                          ),


                          Column(
                            children: [

                              Image(image: AssetImage("${DataForCosmic2.myList2[2].icon2}",
                              ),
                                height: 30,
                                width: 30,
                                color: Colors.white,
                              ),

                              SizedBox(height: 2,),

                              Text("${DataForCosmic2.myList2[2].icon2text}",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),

                              SizedBox(height: 2,),

                              Text("${DataForCosmic2.myList2[2].icon2value}",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(height: 22,),

                              Image(image: AssetImage("${DataForCosmic2.myList2[2].icon5}",
                              ),
                                height: 30,
                                width: 30,
                                color: Colors.white,
                              ),

                              SizedBox(height: 2,),

                              Text("${DataForCosmic2.myList2[2].icon5text}",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),

                              SizedBox(height: 2,),

                              Text("${DataForCosmic2.myList2[2].icon5value}",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),


                            ],
                          ),


                          Column(
                            children: [

                              Image(image: AssetImage("${DataForCosmic2.myList2[2].icon3}",
                              ),
                                height: 30,
                                width: 30,
                                color: Colors.white,
                              ),

                              SizedBox(height: 2,),

                              Text("${DataForCosmic2.myList2[2].icon3text}",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),

                              SizedBox(height: 2,),

                              Text("${DataForCosmic2.myList2[2].icon3value}",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(height: 22,),

                              Image(image: AssetImage("${DataForCosmic2.myList2[2].icon6}",
                              ),
                                height: 30,
                                width: 30,
                                color: Colors.white,
                              ),

                              SizedBox(height: 2,),

                              Text("${DataForCosmic2.myList2[2].icon6text}",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),

                              SizedBox(height: 2,),

                              Text("${DataForCosmic2.myList2[2].icon6value}",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),


                            ],
                          ),


                        ],
                      ),

                      SizedBox(
                        height: 10,
                      ),

                      InkWell(
                          onTap: (){

                          },
                          child: Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight,
                                    colors: [
                                      Colors.purple,
                                      Colors.deepPurpleAccent,
                                      Colors.blue,
                                      Colors.lightBlue,
                                      Colors.lightBlueAccent
                                    ])
                            ),
                            child: Center(
                              child: Text("VISIT",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                      )
                    ],
                  ),
                ),
              ),

                Positioned(
                    top: -9,
                    left: 20,
                    right: 20,
                    child: Image.asset("${myList()[2].img}",
                    height: 60,
                      width: 60,
                    )

                )
              ]
            )
          ],
        ),
        )
    );
  }
}
