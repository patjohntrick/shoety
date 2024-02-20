import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
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
    {
      "id": 3,
      "name": "shamae",
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
                margin: const EdgeInsets.only(bottom: 20.0),
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
