import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.rating,
    required this.title,
    required this.price,
    required this.img,
  }) : super(key: key);
  final String rating;
  final String title;
  final String price;
  final String img;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shadowColor: Colors.black,
      color: Colors.orangeAccent[100],
      child: SizedBox(
        width: 120,
        height: 180,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 110,
                height: 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.orangeAccent,
                ),
                child: Image.network(
                  img,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 8,
              ), //SizedBox

              Text(
                rating,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.green[900],
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.start,
              ), //Text
              const SizedBox(
                height: 8,
              ),
              //SizedBox
              Text(
                title,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.green[900],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                price,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.green[900],
                ),
              ),
            ],
          ), //Column
        ), //Padding
      ), //SizedBox
    );
  }
}
