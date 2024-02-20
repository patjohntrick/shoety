import 'package:flutter/material.dart';
import 'package:shoety/util/functions.dart';

class MyBanner extends StatelessWidget {
  const MyBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // width: 300,
        margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 8.0),
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
    );
  }
}
