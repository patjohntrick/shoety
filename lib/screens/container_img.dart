import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContainerImg extends StatelessWidget {
  const ContainerImg({super.key});

  final imgPath =
      'https://images.pexels.com/photos/19374318/pexels-photo-19374318/free-photo-of-nike-air-jordan-i-in-with-green-elements.jpeg?auto=compress&cs=tinysrgb&w=600';

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
          Center(
            child: Container(
              // width: 300,
              margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 8.0),
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: NetworkImage(imgPath),
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
                  'DISCOVER',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36.0),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
