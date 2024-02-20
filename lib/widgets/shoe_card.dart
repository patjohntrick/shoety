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
      padding: const EdgeInsets.all(12.0),
      // width: 20.0,
      margin: const EdgeInsets.only(top: 12.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imgPath.toString(),
            // fit: BoxFit.cover,
            width: 140,
            // height: 100,
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            title.toString(),
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
          ),
          Text(
            '$price',
            style: TextStyle(fontSize: 18.0),
          )
        ],
      ),
    );
  }
}
