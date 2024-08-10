import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';
import 'package:newshopeonline/pages/product_images.dart';

class IteamsDeatiles extends StatefulWidget {
  final data;
  const IteamsDeatiles({super.key, this.data});

  @override
  State<IteamsDeatiles> createState() => _IteamsDeatilesState();
}

class _IteamsDeatilesState extends State<IteamsDeatiles> {
  bool iscolor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.8,
            decoration: const BoxDecoration(
              color: Color(0xFFD4ECF7),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
            ),
            child: Stack(
              children: [
                Center(
                  child: ProductImages(),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(Icons.arrow_back_ios_new),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.data['title'],
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    AnimatedRatingStars(
                      initialRating: 3.5,
                      minRating: 0.0,
                      maxRating: 5.0,
                      filledColor: Colors.amber,
                      emptyColor: Colors.grey,
                      filledIcon: Icons.star,
                      halfFilledIcon: Icons.star_half,
                      emptyIcon: Icons.star_border,
                      onChanged: (double rating) {},
                      displayRatingValue: true,
                      interactiveTooltips: true,
                      customFilledIcon: Icons.star,
                      customHalfFilledIcon: Icons.star_half,
                      customEmptyIcon: Icons.star_border,
                      starSize: 30.0,
                      animationDuration: Duration(milliseconds: 300),
                      animationCurve: Curves.easeInOut,
                      readOnly: false,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("(450)")
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley"),
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 90),
                        decoration: BoxDecoration(
                            color: Colors.red[400],
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          "Add To Cart",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10)),
                      child: InkWell(
                        onDoubleTap: () {
                          setState(() {
                            iscolor = false;
                          });
                        },
                        onTap: () {
                          setState(() {
                            iscolor = true;
                          });
                        },
                        child: Icon(
                          iscolor ? Icons.favorite : Icons.favorite_border,
                          color: Colors.red[400],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
