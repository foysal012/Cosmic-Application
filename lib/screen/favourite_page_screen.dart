import 'package:cosmic/widget/data_for_cosmic.dart';
import 'package:cosmic/widget/data_for_cosmic2.dart';
import 'package:flutter/material.dart';

class FavouritePageScreen extends StatefulWidget {
  const FavouritePageScreen({Key? key}) : super(key: key);

  @override
  State<FavouritePageScreen> createState() => _FavouritePageScreenState();
}

class _FavouritePageScreenState extends State<FavouritePageScreen> {
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
              Container(
                margin: EdgeInsets.only(
                    top: 40
                ),
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                  color: Colors.black26,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle
                        ),
                        child: Icon(Icons.menu, size: 24, color: Colors.white,)),

                    Text("Favourites",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle
                      ),
                      child: Icon(Icons.perm_identity, size: 24, color: Colors.white,),)
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Expanded(
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                    itemBuilder: (context, index){
                    return Container(
                      margin: EdgeInsets.only(
                        left: 12,
                        right: 12,
                      ),
                      height: 220,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black26,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset("${myList()[index].img}",
                                height: 90,
                                width: 80,
                              ),

                              SizedBox(width: 7,),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("${myList()[index].name}",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.cyan,
                                        ),
                                      ),

                                      SizedBox(width: 170,),

                                      Icon(Icons.favorite_border, color: Colors.white,),
                                    ],
                                  ),
                                  Text("${myList()[index].decription}",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),

                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Details",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),

                                        SizedBox(width: 5,),

                                        Icon(Icons.arrow_forward, color: Colors.cyan,),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    );
                    },
                    separatorBuilder: (_, index){
                    return SizedBox(height: 8,);
                    },
                    itemCount: myList().length
                ),
              )


            ],
          ),
        )
    );
  }
}
