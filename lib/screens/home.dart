import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoety/util/data.dart';
import 'package:shoety/widgets/shoe_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List ss = [
    {
      "id": 1,
      "name": "patrick",
    },
    {
      "id": 2,
      "name": "jeff",
    },
    {
      "id": 3,
      "name": "shamae",
    },
  ];

  // dynamic a = ss.length;

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
      body: ListView.builder(
          itemCount: ss.length,
          itemBuilder: (BuildContext context, index) {
            return GestureDetector(
              onTap: () {
                print(ss[index]['name']);
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 20.0),
                height: 200,
                // padding: EdgeInsets.all(2.0),
                color: Colors.blue[100],
                child: Center(
                  child: Text('${ss[index]['name']}'),
                ),
              ),
            );
          }),
    );
  }
}
