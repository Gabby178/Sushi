import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gridview/colors.dart';
import 'package:gridview/food.dart';
import 'package:gridview/foodtile.dart';
import 'package:gridview/myButton.dart';
import 'package:gridview/sushiDetails.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List foodMenu = [
    //salmon sushi
    Food(
        name: "Salmon sushi",
        price: "21",
        imagePath: 'images/sushi1.png',
        rating: '4.9'),
    Food(
        name: "Tuna sushi",
        price: "20",
        imagePath: 'images/sushi2.png',
        rating: '4.8'),
    Food(
        name: "Tilapia sushi",
        price: "21",
        imagePath: 'images/sushi3.png',
        rating: '5.0'),
  ];

  void navigateTofoodDetails(int index) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => detailspage(
                  food: foodMenu[index],
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        centerTitle: true,
        title: Text(
          'Tokyo',
          style: TextStyle(color: Colors.grey[900]),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //promo banner
          Container(
            decoration: BoxDecoration(
                color: primarycolor, borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.only(left: 25, right: 25, top: 10),
            padding: EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Get 32% Promo',
                      style: GoogleFonts.dmSerifDisplay(
                          fontSize: 20, color: Colors.white),
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    //redeem button
                    myButton(
                      text: "Reddem",
                      ontap: () {},
                    ),
                  ],
                ),

                //image
                Image.asset(
                  'images/sushi1.png',
                  height: 100,
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),

          //meny list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Food Menu',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),

          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: foodMenu.length,
                itemBuilder: (context, index) => FoodTile(
                      food: foodMenu[index],
                      ontap: () => navigateTofoodDetails(index),
                    )),
          ),

          const SizedBox(
            height: 25,
          ),

          Container(
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(15)),
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.only(
              left: 25,
              right: 25,
            ),
            child: Row(
              children: [
                Image.asset(
                  'images/sushi.png',
                  height: 60,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sushi',
                      style: GoogleFonts.dmSerifDisplay(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '\$21',
                      style: TextStyle(color: Colors.grey[700], fontSize: 20),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
