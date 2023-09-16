import 'package:cosmic/screen/home%20screen/profile_screen.dart';
import 'package:cosmic/widget/data_for_cosmic.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
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
              child: Column(
                children: [
                  Center(child: Text("Milky Way",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                  ),
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      InkWell(
                        onTap: (){

                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle
                            ),
                            child: Icon(Icons.menu, size: 24, color: Colors.white,)),
                      ),

                      Text("Solar System",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>profileScreen()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle
                          ),
                          child: Icon(Icons.perm_identity, size: 24, color: Colors.white,),),
                      )
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 30,),

            Container(
              height: 60,
              width: double.infinity,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    return Container(
                      height: 60,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.black54,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(myList()[index].img!,
                            height: 50,
                            width: 50,
                          ),
                          Text("${myList()[index].name}",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (_, index){
                    return SizedBox(width: 6,);
                  },
                  itemCount: myList().length
              ),

            ),

            SizedBox(
              height: 15,
            ),

            Container(
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
                  Text("Planet of the day",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  ),
                  Row(
                    children: [
                      Image.asset("${myList()[3].img}",
                      height: 70,
                        width: 50,
                      ),

                      SizedBox(width: 7,),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${myList()[3].name}",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan,
                            ),
                          ),
                          Text("${myList()[3].decription}",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),

            SizedBox(
              height: 15,
            ),

            Container(
              margin: EdgeInsets.only(
                  left: 12,
                  right: 12
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
                Text("Solar System",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

               SizedBox(height: 7,),

                Text("${myList()[3].sldecription}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                )
              ],
            ),
            )


          ],
        ),
      ),
    );
  }
}
