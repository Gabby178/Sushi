import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gridview/colors.dart';
import 'package:gridview/food.dart';
import 'package:gridview/myButton.dart';

class detailspage extends StatefulWidget {
  final Food food;
  const detailspage({super.key, required this.food});

  @override
  State<detailspage> createState() => _detailspageState();
}

class _detailspageState extends State<detailspage> {
  int QuantityCount = 0;

  //decrement quantity
  void decreamentQuantity() {
    setState(() {
      if (QuantityCount > 0) {
        QuantityCount--;
      }
    });
  }

  //increment quantity

  void incrementQuantity() {
    setState(() {
      QuantityCount++;
    });
  }

  void addtocart() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                //image
                Image.asset(
                  widget.food.imagePath,
                  height: 200,
                ),

                const SizedBox(
                  height: 25,
                ),

                //rating
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow[800],
                      ),
                      //rating number
                      Text(
                        widget.food.rating,
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    widget.food.name,
                    style: GoogleFonts.dmSerifDisplay(
                        fontWeight: FontWeight.bold, fontSize: 28),
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Description",
                    style: TextStyle(
                        color: Colors.grey[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),

                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                    style: TextStyle(
                        color: Colors.grey[600], fontSize: 15, height: 2),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(25),
            color: primarycolor,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //price
                    Text(
                      "\$${widget.food.price}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),

                    //quantity
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: secondarycolor, shape: BoxShape.circle),
                          child: IconButton(
                              onPressed: decreamentQuantity,
                              icon: const Icon(Icons.remove)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          QuantityCount.toString(),
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: secondarycolor, shape: BoxShape.circle),
                          child: IconButton(
                              onPressed: incrementQuantity,
                              icon: const Icon(Icons.add)),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                myButton(text: "Add To Cart", ontap: addtocart),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
