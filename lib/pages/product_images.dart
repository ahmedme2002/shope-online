import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({super.key});

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      indicatorColor: Colors.redAccent,
      indicatorBackgroundColor: Colors.white,
      indicatorRadius: 4,
      onPageChanged: (value) {
        // debugPrint('Page changed: $value');
      },
      height: 400,
      autoPlayInterval: 3000,
      isLoop: true,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/images/p1.png',
            // fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/images/p2.png',
            // fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/images/Ear Headphone.png',

            // fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/images/White Tshirt.png',

            // fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/images/Nike Shoe.png',

            // fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
