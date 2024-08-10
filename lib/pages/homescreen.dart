import 'package:flutter/material.dart';
import 'package:newshopeonline/pages/grid_Iteams.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Color> colorsoffers = const [
    Color.fromARGB(255, 246, 111, 58),
    Color.fromARGB(255, 36, 131, 233),
    Color.fromARGB(255, 63, 208, 143),
  ];

  List images = const [
    "assets/images/slide1.png",
    "assets/images/slide3.png",
    "assets/images/slide4.png",
  ];

  List iconimages = const [
    "assets/images/icon1.png",
    "assets/images/icon2.png",
    "assets/images/icon3.png",
    "assets/images/icon4.png",
    "assets/images/icon5.png",
    "assets/images/icon6.png",
    "assets/images/icon7.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFD4ECF7)),
                      child: const Icon(Icons.shopping_cart_rounded),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFD4ECF7)),
                      child: const Icon(Icons.search),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Hello Dear',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Lets shope Something Now',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 17),
              ),
              const SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < 3; i++)
                      Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.only(left: 15),
                        width: MediaQuery.of(context).size.width / 1.5,
                        height: MediaQuery.of(context).size.height / 5.2,
                        decoration: BoxDecoration(
                          color: colorsoffers[i],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "30% off on summer collection",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 22),
                                ),
                                Container(
                                  width: 90,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(40)),
                                  child: Center(
                                    child: Text(
                                      'Get Now',
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )
                              ],
                            )),
                            Image.asset(
                              images[i],
                              height: 180,
                              width: 110,
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Categories',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(color: Colors.black.withOpacity(0.5)),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int x = 0; x < iconimages.length; x++)
                      Container(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.only(left: 15),
                        // padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFD4ECF7),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Image.asset(
                            iconimages[x],
                            width: 20,
                            height: 20,
                          ),
                        ),
                      )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              const GridIteams(),
            ],
          ),
        ),
      ),
    );
  }
}
