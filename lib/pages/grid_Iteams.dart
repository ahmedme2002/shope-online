import 'package:flutter/material.dart';
import 'package:newshopeonline/pages/Iteam_deatiles.dart';

class GridIteams extends StatefulWidget {
  const GridIteams({super.key});

  @override
  State<GridIteams> createState() => _GridIteamsState();
}

class _GridIteamsState extends State<GridIteams> {
  List iteamscat = [
    {
      "offerce": "30%off",
      "images": 'assets/images/Apple Watch -M2.png',
      "title": "Apple Watch-M2",
      "price": "\$\100",
    },
    {
      "offerce": "30%off",
      "images": 'assets/images/White Tshirt.png',
      "title": "White Tshirt",
      "price": "\$\100",
    },
    {
      "offerce": "30%off",
      "images": 'assets/images/Nike Shoe.png',
      "title": "Nike",
      "price": "\$\100",
    },
    {
      "offerce": "30%off",
      "images": 'assets/images/Ear Headphone.png',
      "title": "Ear Headphone",
      "price": "\$\100",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: iteamscat.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        mainAxisExtent: 300,
      ),
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
              color: Color(0xFFD4ECF7),
              borderRadius: BorderRadius.circular(25)),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(iteamscat[index]["offerce"]),
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => IteamsDeatiles(
                              data: iteamscat[index],
                            )));
                  },
                  child: Container(
                    child: Image.asset(
                      iteamscat[index]["images"],
                      height: 130,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  iteamscat[index]["title"],
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      iteamscat[index]["price"],
                      style: TextStyle(color: Colors.redAccent),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "\$\130",
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
