import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:newshopeonline/pages/account.dart';
import 'package:newshopeonline/pages/cartsiteams.dart';
import 'package:newshopeonline/pages/homescreen.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  int selectedindex = 0;
  static List<Widget> widgetoptions = <Widget>[
    const HomeScreen(),
    const CartIteams(),
    Container(),
    const AccountApp(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: widgetoptions.elementAt(selectedindex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(0.1))
        ]),
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: GNav(
            rippleColor: Colors.grey.shade300,
            hoverColor: Colors.grey.shade300,
            curve: Curves.easeOutExpo,
            gap: 8,
            color: Colors.black,
            activeColor: Colors.white,
            duration: Duration(milliseconds: 400),
            iconSize: 24,
            tabBackgroundColor: Colors.red.shade500,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            tabs: const [
              GButton(
                icon: LineIcons.home,
                text: 'Home',
              ),
              GButton(
                icon: LineIcons.shoppingBag,
                text: 'Carts',
              ),
              GButton(
                icon: LineIcons.heart,
                text: 'Wishlist',
              ),
              GButton(
                icon: LineIcons.user,
                text: 'Account',
              )
            ],
            selectedIndex: selectedindex,
            onTabChange: (index) {
              setState(() {
                selectedindex = index;
              });
            },
          ),
        )),
      ),
    );
  }
}
