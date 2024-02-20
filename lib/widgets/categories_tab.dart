import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoety/widgets/shoe_card.dart';

class CategoriesTab extends StatefulWidget {
  const CategoriesTab({super.key});

  @override
  State<CategoriesTab> createState() => _CategoriesTabState();
}

class _CategoriesTabState extends State<CategoriesTab>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabBarController = TabController(length: 4, vsync: this);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: TabBar(
            controller: tabBarController,
            // indicator: BoxDecoration(
            //   borderRadius: BorderRadius.circular(50),
            //   color: Colors.white,
            // ),
            // indicator: Decoration(),
            tabs: const <Widget>[
              Tab(
                text: 'All',
              ),
              Tab(
                text: 'Men',
              ),
              Tab(
                text: 'Women',
              ),
              Tab(
                text: 'Kids',
              ),
            ],
          ),
        ),
        SizedBox(
          // color: Colors.black,
          height: 470,
          // width: double.maxFinite,
          // decoration: BoxDecoration(
          //   color: Colors.black,
          // ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25.0, 0, 25.0, 0),
            child: TabBarView(
              controller: tabBarController,
              children: [
                ListView(
                  children: const [
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ShoeCard(
                                imgPath: 'assets/best-seller-1.png',
                                price: 'P5,551.00',
                                name: 'Nike Air'),
                            ShoeCard(
                                imgPath: 'assets/best-seller-1.png',
                                price: 'P5,551.00',
                                name: 'Nike Air'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ShoeCard(
                                imgPath: 'assets/best-seller-1.png',
                                price: 'P5,551.00',
                                name: 'Nike Air'),
                            ShoeCard(
                                imgPath: 'assets/best-seller-1.png',
                                price: 'P5,551.00',
                                name: 'Nike Air'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),

                // ShoeCard(
                //     imgPath: 'assets/best-seller-1.png',
                //     price: 'P5,551.00',
                //     title: 'Nike Air'),
                Text('Men'),
                Text('Women'),
                Text('Kids'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
