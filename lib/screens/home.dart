import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoety/util/functions.dart';
import 'package:shoety/widgets/banner.dart';
import 'package:shoety/widgets/category_tab.dart';
import 'package:shoety/widgets/my_appbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      body: Column(
        children: [MyBanner(), CategoryTab()],
      ),
    );
  }
}
