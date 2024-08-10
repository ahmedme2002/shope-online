import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartIteams extends StatefulWidget {
  const CartIteams({super.key});

  @override
  State<CartIteams> createState() => _CartIteamsState();
}

class _CartIteamsState extends State<CartIteams> {
  List images = [
    "p1",
    "White Tshirt",
    "Nike Shoe",
    "Ear Headphone",
  ];

  List size = ["10", "30", '42', '20'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 10, right: 10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'My Cart',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
              for (int i = 0; i < images.length; i++)
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFD4ECF7)),
                        child: Image.asset(
                          "assets/images/${images[i]}.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${images[i]}",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Size: ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Text(
                                  size[i],
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.5)),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "\$\\ 50.55",
                              style: TextStyle(
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8),
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Icon(
                                    Icons.remove,
                                    size: 15,
                                  ),
                                ),
                                Text("01"),
                                Container(
                                  padding: EdgeInsets.all(8),
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Icon(
                                    Icons.add,
                                    size: 15,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              Container(
                padding: EdgeInsets.only(top: 15),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total : ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                          Text(
                            "\$\200.54",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.red[400],
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                            color: Colors.red[400],
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            "Order Now",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
