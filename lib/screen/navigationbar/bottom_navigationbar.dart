import 'package:cosmic/screen/favourite_page_screen.dart';
import 'package:cosmic/screen/home_page_screen.dart';
import 'package:cosmic/screen/more_page_screen.dart';
import 'package:flutter/material.dart';

class BottomNaigationBarPageScreen extends StatefulWidget {
  const BottomNaigationBarPageScreen({Key? key}) : super(key: key);

  @override
  State<BottomNaigationBarPageScreen> createState() => _BottomNaigationBarPageScreenState();
}

class _BottomNaigationBarPageScreenState extends State<BottomNaigationBarPageScreen> {

  List<Widget> pages = [
    HomePageScreen(),
    FavouritePageScreen(),
    MorePageScreen(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[currentIndex],


      bottomNavigationBar: BottomNavigationBar(
        onTap: (value){
          setState(() {
            currentIndex = value;
          });
        },
          selectedLabelStyle: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 20
          ),
          selectedItemColor: Colors.black,


          unselectedFontSize: 10,
          currentIndex: currentIndex,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.circle),
              label: "Home",
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: "Favourite",
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: "More",
            ),
          ]
      ),
    );
  }
}
