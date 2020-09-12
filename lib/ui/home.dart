import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/travel.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            InkWell(
                              child: Icon(
                                Icons.account_balance,
                                size: 50,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Hotels",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            InkWell(
                              child: Icon(
                                Icons.accessibility_new,
                                size: 50,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Tourist Guide",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            InkWell(
                              child: Icon(
                                Icons.airplanemode_active,
                                size: 50,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Travel Flight",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            InkWell(
                              child: Icon(
                                Icons.add_shopping_cart,
                                size: 50,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Shopping",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            InkWell(
                              child: Icon(
                                Icons.airport_shuttle,
                                size: 50,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Car Rentals",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            InkWell(
                              child: Icon(
                                Icons.bookmark_border,
                                size: 50,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Booking",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            InkWell(
                              child: Icon(
                                Icons.restaurant,
                                size: 50,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Restaurant",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            InkWell(
                              child: Icon(
                                Icons.assignment,
                                size: 50,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Things to Travel",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: Text(
                'Home',
                style: TextStyle(color: Colors.black),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.black,
              ),
              title: Text(
                'Favorite',
                style: TextStyle(color: Colors.black),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              title: Text(
                'Menu',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
        ),
      ),
    );
  }
}
