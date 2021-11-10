import 'package:flutter/material.dart';
import 'package:lab4/category.dart';
import 'package:lab4/navigation_bar.dart';
import 'package:lab4/state.dart';
import 'package:lab4/utils.dart';
import 'package:provider/provider.dart';

class MyBag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
        builder: (context, cart, child) => Scaffold(
              resizeToAvoidBottomInset: true,
              body: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(20),
                              alignment: Alignment.centerRight,
                              width: MediaQuery.of(context).size.width,
                              // height: MediaQuery.of(context).size.height-90,
                              child: Row(
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
                            ),
                            const Text(
                              "My bag",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Expanded(
                              child: ListView(
                                children: cart.items
                                    .map((e) => _renderItem(e, context))
                                    .toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    NavigationBar()
                  ],
                ),
              ),
            ));
  }

  Widget _renderItem(Category category, BuildContext context) {
    return Consumer<CartModel>(
        builder: (context, cart, child) => Container(
              padding: const EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height / 4,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                Radius.circular(10),
              )),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height / 4,
                      // color: Colors.blue,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image.asset(
                          category.imgName + ".jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                category.name,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Text("Description: Lorem ipsum"),
                              Text(
                                category.price.toString() + "\$",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.orangeAccent,
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                            icon: Icon(Icons.delete_forever_rounded, size: 40,),
                            onPressed: () {
                              cart.remove(category);
                            },
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ));
  }
}
