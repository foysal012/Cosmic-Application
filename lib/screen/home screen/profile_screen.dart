import 'package:flutter/material.dart';

class profileScreen extends StatefulWidget {
  const profileScreen({Key? key}) : super(key: key);

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {

  bool isResult = true;

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
                padding: EdgeInsets.only(left: 15),
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    InkWell(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle
                          ),
                          child: Icon(Icons.arrow_back, size: 24, color: Colors.white,)),
                    ),

                    SizedBox(width: 120,),

                    Text("My Profile",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ],
                ),

              ),

              SizedBox(
                height: 30,
              ),

              Container(
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                padding: EdgeInsets.only(
                    left: 10,
                right: 10),
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black26
                ),
                child: ListTile(
                  leading: Container(
                    alignment: Alignment.centerLeft,
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3,
                        color: Colors.white,
                      ),
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage("images/w27.png")),
                    ),
                  ),

                  title: Text("Arthur Dent",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.white,
                  ),
                  ),

                  subtitle: Text("Space adventurer",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.white60,
                    ),
                  ),

                  trailing: Icon(Icons.edit, color: Colors.white, size: 18),
                )
              ),

              SizedBox(
                height: 20,
              ),

              Container(
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  padding: EdgeInsets.only(
                      left: 10,
                      right: 10),
                  height: 500,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black26
                  ),
                  child: Column(
                    children: [
                      SwitchListTile(
                        title: Text("Show plantary progress",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white60
                        ),
                        ),
                          value: isResult,
                          onChanged: (value){
                            setState(() {
                              isResult = !isResult;
                            });
                          },

                      ),

                      isResult == true ? Image.asset("images/w28.png") : Text("Want to show progree Plese click on switch Button",
                      style: TextStyle(
                        color: Colors.white60,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                      ),

                      SizedBox(height: 30,),

                      Row(
                        children: [
                          Checkbox(
                              value: isResult,
                              onChanged: (val){

                              },
                          ),
                          Text("Show me in Planet Rating",
                          style: TextStyle(
                            color: Colors.white60,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                          )
                        ],
                      ),

                      SizedBox(height: 10,),

                      Row(
                        children: [
                          Checkbox(
                            value: isResult,
                            onChanged: (val){

                            },
                          ),
                          Text("Notifications",
                            style: TextStyle(
                              color: Colors.white60,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),

              ),
            ],
          ),
        )
    );
  }
}
