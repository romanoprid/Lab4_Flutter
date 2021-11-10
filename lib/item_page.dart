import 'package:flutter/material.dart';
import 'package:lab4/navigation_bar.dart';
import 'package:lab4/category.dart';
import 'package:lab4/state.dart';
import 'package:provider/provider.dart';

class ItemPage extends StatelessWidget {
  Category? selectedCategory;

  ItemPage({Key? key, this.selectedCategory}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
        builder: (context, cart, child) => Scaffold(
              extendBodyBehindAppBar: true,
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                leading: Padding(
                  padding: const EdgeInsets.all(8),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios_outlined,
                        color: Colors.black),
                  ),
                ),
              ),
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
                      const Padding(padding: EdgeInsets.only(top: 100)),
                      Column(
                        children: [
                          Image.asset(selectedCategory!.imgName + '.jpg'),
                          const Padding(padding: EdgeInsets.only(top: 20)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                selectedCategory!.name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text(
                                selectedCategory!.price.toString() +
                                    " " +
                                    "USD",
                                style: const TextStyle(
                                    color: Colors.green, fontSize: 20),
                              ),
                            ],
                          ),
                          const Padding(padding: EdgeInsets.only(top: 20)),
                          Row(
                            children: const [
                              Text('Lorem ipsum lorem \nipsum'),
                            ],
                          ),
                          const Padding(padding: EdgeInsets.only(top: 100)),
                          Center(
                            child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                onPressed: () {
                                  cart.add(selectedCategory!);
                                },
                                icon: const Icon(Icons.shopping_bag_outlined),
                                label: const Text(
                                  'Add To Bag',
                                  style: TextStyle(fontSize: 24),
                                )),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              bottomNavigationBar: NavigationBar(),
            ));
  }
}
