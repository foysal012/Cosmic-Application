import 'package:flutter/material.dart';

class DataForCosmic{

  String? name;
  String? img;
  String? decription;
  String? sldecription;
  String? elaborate;

  DataForCosmic({this.name, this.img, this.decription, this.sldecription, this.elaborate});

  // static List<DataForCosmic> myList = [
  //   DataForCosmic(
  //     img: "images/w6.png",
  //     name: "Mercury"
  //   ),
  //   DataForCosmic(
  //       img: "images/w7.png",
  //       name: "Venus"
  //   ),
  //   DataForCosmic(
  //       img: "images/w8.png",
  //       name: "Earth"
  //   ),
  //   DataForCosmic(
  //       img: "images/w9.png",
  //       name: "Mars"
  //   ),
  //   DataForCosmic(
  //       img: "images/w10.png",
  //       name: "Jupiter"
  //   ),
  //   DataForCosmic(
  //       img: "images/w11.png",
  //       name: "Saturn"
  //   ),
  //   DataForCosmic(
  //       img: "images/w6.png",
  //       name: "Uranus"
  //   ),
  //   DataForCosmic(
  //       img: "images/w7.png",
  //       name: "Neptune"
  //   ),
  //
  // ];

}

List<DataForCosmic> myList() {
  return [
    DataForCosmic(
        img: "images/w6.png",
        name: "Mercury",
      decription: "Mercury is the fourth planet from the\nSun and the second-smallest planet\nin the Solar System, only begin larger\nthan Mercury. In the English\n language, Mars is named for the\nRoman god of war.",
      elaborate: "Mercury is the smallest planet in the\nSolars System and the closest to the\nSun"
    ),
    DataForCosmic(
        img: "images/w7.png",
        name: "Venus",
        decription: "Venus is the fourth planet from the\nSun and the second-smallest planet\nin the Solar System, only begin larger\nthan Mercury. In the English\n language, Mars is named for the\nRoman god of war.",
      elaborate: "Venus is the second Planet from the\nSun and is Earth's closest planetary\nneighbor.",
    ),
    DataForCosmic(
        img: "images/w8.png",
        name: "Earth",
        decription: "Earth is the fourth planet from the\nSun and the second-smallest planet\nin the Solar System, only begin larger\nthan Mercury. In the English\n language, Mars is named for the\nRoman god of war.",
      elaborate: "Earth is an ellipsoid with a\ncircumference of about 40,000 km.\nIt is the densest planet in the Solar\nSystem."
    ),
    DataForCosmic(
        img: "images/w9.png",
        name: "Mars",
        decription: "Mars is the fourth planet from the\nSun and the second-smallest planet\nin the Solar System, only begin larger\nthan Mercury. In the English\n language, Mars is named for the\nRoman god of war.",
      sldecription: "The Solar System[c] is the gravitationally bound\nsystem of the Sun and the objects that orbit it. it\nformed 4.6 billion years ago from the gravitational\ncollapse of a giant interstellar molecular cloud.\nThe vast majority (99.86%) of the system's mass\nis in the sun, with most of the remaining mass",
      elaborate: "Mars is the fourth planet from the\nSun and the second-smallest planet\nin the Solar System",
    ),
    DataForCosmic(
        img: "images/w10.png",
        name: "Jupiter",
        decription: "Jupiter is the fourth planet from the\nSun and the second-smallest planet\nin the Solar System, only begin larger\nthan Mercury. In the English\n language, Mars is named for the\nRoman god of war.",
      elaborate: "Jupiter is the fourth planet from the\nSun and the second-smallest planet\nin the Solar System",
    ),
    DataForCosmic(
        img: "images/w11.png",
        name: "Saturn",
        decription: "Saturn is the fourth planet from the\nSun and the second-smallest planet\nin the Solar System, only begin larger\nthan Mercury. In the English\n language, Mars is named for the\nRoman god of war.",
      elaborate: "Saturn is the fourth planet from the\nSun and the second-smallest planet\nin the Solar System",
    ),
    DataForCosmic(
        img: "images/w6.png",
        name: "Uranus",
        decription: "Uranus is the fourth planet from the\nSun and the second-smallest planet\nin the Solar System, only begin larger\nthan Mercury. In the English\n language, Mars is named for the\nRoman god of war.",
      elaborate: "Uranus is the fourth planet from the\nSun and the second-smallest planet\nin the Solar System",
    ),
    DataForCosmic(
        img: "images/w7.png",
        name: "Neptune",
        decription: "Neptune is the fourth planet from the\nSun and the second-smallest planet\nin the Solar System, only begin larger\nthan Mercury. In the English\n language, Mars is named for the\nRoman god of war.",
      elaborate: "Neptune is the fourth planet from the\nSun and the second-smallest planet\nin the Solar System",
    ),
  ];
}