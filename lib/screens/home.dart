import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoety/widgets/shoe_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.transparent,
          // elevation: 1.0,
          centerTitle: true,
          title: const Text('SHOETY'),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 25.0),
              child: Icon(Icons.shopping_bag),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                'Best Seller',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // shoes
                SizedBox(
                    // width: 250,

                    height: 370,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      // padding: EdgeInsets.all(20),
                      children: const [
                        ShoeCard(
                          imgPath: 'assets/best-seller-1.png',
                        ),
                        ShoeCard(imgPath: 'assets/best-seller-2.png'),
                        ShoeCard(imgPath: 'assets/best-seller-3.png'),
                        ShoeCard(imgPath: 'assets/best-seller-4.png'),
                        ShoeCard(imgPath: 'assets/best-seller-5.png'),
                      ],
                    )),
                // ShoeCard(),
              ],
            ),
          ],
        ));
  }
}
