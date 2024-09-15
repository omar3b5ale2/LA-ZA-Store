import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/card_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List screens = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: const Icon(CupertinoIcons.line_horizontal_3),
          actions: const [
            Icon(Icons.shopping_bag_rounded),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.black,
            child: Column(
              children: [
                GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2 / 3,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1,
                    ),
                    padding: EdgeInsets.zero,
                    itemCount: 10,
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return const CardItem();
                    })
              ],
            ),
          ),
        ));
  }
}

List<IconData> listOfIcons = [
  Icons.home_rounded,
  Icons.favorite_rounded,
  Icons.shopping_bag_rounded,
  Icons.wallet_rounded,
];
