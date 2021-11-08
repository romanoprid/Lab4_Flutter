import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab4/explore_page.dart';
import 'package:lab4/my_bag_page.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 90,
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Material(
            child: Column(
              children: [
                IconButton(
                  icon: Icon(Icons.home_outlined),
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return ExplorePage();
                      }),
                    )
                  },
                ),
                Text("Home")
              ],
            ),
          ),
          Material(
            child: Column(
              children: [
                IconButton(
                  icon: Icon(Icons.shopping_bag),
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return MyBag();
                      }),
                    )
                  },
                ),
                Text("My Bag")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
