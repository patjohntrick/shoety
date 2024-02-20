import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:shoety/util/constant.dart';
import 'package:shoety/widgets/categories_tab.dart';
import 'package:shoety/widgets/my_appbar.dart';

class ContainerImg extends StatefulWidget {
  const ContainerImg({super.key});

  @override
  State<ContainerImg> createState() => _ContainerImgState();
}

class _ContainerImgState extends State<ContainerImg> {
  String getBannerImg() {
    List networkPath = [
      'https://images.pexels.com/photos/19374318/pexels-photo-19374318/free-photo-of-nike-air-jordan-i-in-with-green-elements.jpeg?auto=compress&cs=tinysrgb&w=600',
      'https://images.pexels.com/photos/1456737/pexels-photo-1456737.jpeg?auto=compress&cs=tinysrgb&w=600',
      'https://images.pexels.com/photos/16985344/pexels-photo-16985344/free-photo-of-young-woman-holding-fashionable-nike-sneakers.jpeg?auto=compress&cs=tinysrgb&w=600',
      'https://images.pexels.com/photos/4277508/pexels-photo-4277508.jpeg?auto=compress&cs=tinysrgb&w=600',
      'https://images.pexels.com/photos/6481840/pexels-photo-6481840.jpeg?auto=compress&cs=tinysrgb&w=600',
    ];

    var random = Random().nextInt(networkPath.length);
    return networkPath[random];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              // width: 300,
              margin:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 8.0),
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: NetworkImage(getBannerImg()),
                    fit: BoxFit.fitWidth,
                    // alignment: Alignment.bottomCenter,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.6),
                      BlendMode.darken,
                    )),
              ),
              child: const Center(
                child: Text(
                  'JUST DO IT.',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          // const SizedBox(height: 10.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                Text(
                  'Categories',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
                ),
              ],
            ),
          ),
          const CategoriesTab(),
        ],
      ),
    );
  }
}
