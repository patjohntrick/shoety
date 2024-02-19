import 'package:flutter/material.dart';

class ShoeCard extends StatelessWidget {
  final String? imgPath;
  final String? title;
  final String? price;

  const ShoeCard({super.key, this.imgPath, this.price, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 40,
      padding: const EdgeInsets.all(20.0),
      margin: EdgeInsets.only(left: 25.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imgPath.toString(),
            // fit: BoxFit.cover,
            width: 250,
            // height: 200,
          ),
          const SizedBox(
            height: 16.0,
          ),
          const Text(
            'Nike Dunk Low Retro',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
          ),
          const Text(
            'P5,490',
            style: TextStyle(fontSize: 18.0),
          )
        ],
      ),
    );
  }
}
