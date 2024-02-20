import 'package:flutter/material.dart';
import 'package:shoety/util/constant.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // backgroundColor: Colors.transparent,
      // elevation: 1.0,
      centerTitle: true,
      title: const Text(appTitle),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 25.0),
          child: Icon(Icons.shopping_bag),
        ),
      ],
    );
  }
}
