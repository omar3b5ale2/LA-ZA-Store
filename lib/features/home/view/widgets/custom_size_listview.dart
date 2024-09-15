import 'package:flutter/material.dart';

import 'custom_item_size.dart';

class SizeItemListview extends StatelessWidget {
  const SizeItemListview({super.key});

  final List<String> sizeItemList = const ['S', 'M', 'L', 'XL', '2XL'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: sizeItemList.length,
          itemBuilder: (context, index) {
            return SizeItem(
              size: sizeItemList[index],
            );
          }),
    );
  }
}
