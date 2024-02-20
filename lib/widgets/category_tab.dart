import 'package:flutter/material.dart';
import 'package:shoety/util/constant.dart';
import 'package:shoety/util/data.dart';
import 'package:shoety/widgets/shoe_card.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    // print(getFilteredData(men));
    return Expanded(
      child: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: TabBar(
                // tabAlignment: TabAlignment.startOffset,
                tabs: [
                  Tab(
                    text: 'Best Seller',
                  ),
                  Tab(
                    text: 'Men',
                  ),
                  Tab(text: 'Women'),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.grey[100],
                child: TabBarView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25.0, 4.0, 25.0, 0),
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 1 / 1.50,
                                crossAxisCount: 2,
                                crossAxisSpacing: 12.0),
                        itemCount: bestSellerTab.length,
                        itemBuilder: (context, index) => ShoeCard(
                            imgPath: bestSellerTab[index]['imgPath'],
                            price: bestSellerTab[index]['price'],
                            name: bestSellerTab[index]['name']),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25.0, 4.0, 25.0, 0),
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 1 / 1.50,
                                crossAxisCount: 2,
                                crossAxisSpacing: 12.0),
                        itemCount: menTab.length,
                        itemBuilder: (context, index) => ShoeCard(
                            imgPath: menTab[index]['imgPath'],
                            price: menTab[index]['price'],
                            name: menTab[index]['name']),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25.0, 4.0, 25.0, 0),
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 1 / 1.50,
                                crossAxisCount: 2,
                                crossAxisSpacing: 12.0),
                        itemCount: womenTab.length,
                        itemBuilder: (context, index) => ShoeCard(
                            imgPath: womenTab[index]['imgPath'],
                            price: womenTab[index]['price'],
                            name: womenTab[index]['name']),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
