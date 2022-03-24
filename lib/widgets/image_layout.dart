import 'package:flutter/material.dart';

import 'package:filmscafe_task/utils/constants.dart';

class ImageLayout extends StatelessWidget {
  const ImageLayout({
    Key? key,
    required this.category,
  }) : super(key: key);

  final String category;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            color: Colors.blue,
            child: Image.network(
              kDummyImages[category]![0],
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            // color: Colors.greenAccent,
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.50,
                  height: 125,
                  color: Colors.pink,
                  child: Image.network(
                    kDummyImages[category]![1],
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.50,
                  height: 125,
                  color: Colors.yellowAccent,
                  child: Image.network(
                    kDummyImages[category]![2],
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
