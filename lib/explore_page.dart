import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab4/category.dart';
import 'package:lab4/item_page.dart';
import 'package:lab4/navigation_bar.dart';
import 'package:lab4/utils.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

<<<<<<< HEAD
List<Category> allCategories = Utils.getMockedCategory();
=======
class _ExplorePageState extends State<ExplorePage> {
>>>>>>> d8b8d408d960ebf458c36d0584c43ab8990fa11e

class _ExplorePageState extends State<ExplorePage> {
  bool isPressed = true;

<<<<<<< HEAD
  int? selected;
  List<Category> categories = List.of(allCategories.toList());
=======
  List<Category> categories = Utils.getMockedCategory();

>>>>>>> d8b8d408d960ebf458c36d0584c43ab8990fa11e
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.amber[50],
          padding: const EdgeInsets.only(
            top: 40,
            left: 30,
            right: 30,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: Container()),
                  const Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Icon(Icons.add_alert_outlined,
                      size: 30, color: Colors.black),
                ],
              ),
              const SizedBox(height: 10),
              // Row(
              //   children: [
              //     _widgetOptions.elementAt(_selectedIndex),
              //   ],
              Row(
                children: const [
                  Text(
                    "Explore",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),

              Expanded(
                child: ListView.builder(
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.all(20),
                      height: MediaQuery.of(context).size.height,
                      // child:
                      child: Stack(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ItemPage(
                                          selectedCategory: categories[index],
                                        )),
                              );
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                categories[index].imgName + ".jpg",
                                fit: BoxFit.cover,
                                height: MediaQuery.of(context).size.height,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            child: Container(
                              padding:
                                  const EdgeInsets.only(left: 10, bottom: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 20),
                                  Text(
                                    categories[index].name,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    categories[index].price.toString() +
                                        " " +
                                        "USD",
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5.0),
                height: 50.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        selected = selected == 0 ? null : 0;
                        setState(() => {
                              categories = allCategories
                                  .where((element) => selected == 0
                                      ? element.price > 8000
                                      : true)
                                  .toList()
                            });
                      },
                      child: Text('8000 and upper',
                          style: TextStyle(
                              color:
                                  selected == 0 ? Colors.black : Colors.grey)),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        selected = selected == 1 ? null : 1;
                        setState(() => {
                              categories = allCategories
                                  .where((element) => selected == 1
                                      ? element.price > 4000 &&
                                          element.price <= 8000
                                      : true)
                                  .toList()
                            });
                      },
                      child: Text('4000-8000',
                          style: TextStyle(
                              color:
                                  selected == 1 ? Colors.black : Colors.grey)),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        selected = selected == 2 ? null : 2;
                        setState(() => {
                              categories = allCategories
                                  .where((element) => selected == 2
                                      ? element.price <= 4000
                                      : true)
                                  .toList()
                            });
                      },
                      child: Text('Under 4000',
                          style: TextStyle(
                              color:
                                  selected == 2 ? Colors.black : Colors.grey)),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: categories.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: const EdgeInsets.all(20),
                      height: MediaQuery.of(context).size.height / 2,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ItemPage(
                                          selectedCategory: categories[index],
                                        )),
                              );
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                categories[index].imgName + ".jpg",
                                fit: BoxFit.cover,
                                height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            child: Container(
                              padding: const EdgeInsets.only(left: 30, top: 40),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // SizedBox(width: 10),
                                  Text(
                                    categories[index].name,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    "Here should be a \ndescription of this\nfurniture",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    categories[index].price.toString() +
                                        " " +
                                        "USD",
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Row(children: [
                                    ClipOval(
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.favorite,
                                              color: Colors.red)),
                                    ),
                                    const SizedBox(width: 20),
                                    ClipOval(
                                      child: IconButton(
                                        icon: Icon(Icons.shopping_bag,
                                            color: Colors.green[400]),
                                        onPressed: () {},
                                      ),
                                    )
                                  ])
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(),
    );
  }
}
