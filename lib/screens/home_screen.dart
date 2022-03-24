import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:filmscafe_task/utils/constants.dart';
import 'package:filmscafe_task/widgets/product_card.dart';
import 'package:filmscafe_task/widgets/image_layout.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent[100],
          title: const Text(
            "Store",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
            )
          ],
          elevation: 0.0,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                    autoPlayCurve: Curves.easeInBack,
                  ),
                  items: kImageSliders,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "This month's picks",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 24.0,
                  ),
                ),
                SizedBox(
                  height: 48,
                  child: AppBar(
                    elevation: 1,
                    backgroundColor: Colors.black12,
                    bottom: const TabBar(
                      isScrollable: true,
                      tabs: [
                        Tab(
                          text: "All",
                        ),
                        Tab(
                          text: "Apparel",
                        ),
                        Tab(
                          text: "Electronics",
                        ),
                        Tab(
                          text: "Beauty",
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 250,
                  child: TabBarView(
                    children: [
                      ImageLayout(
                        category: 'All',
                      ),
                      ImageLayout(
                        category: 'Apparel',
                      ),
                      ImageLayout(
                        category: 'Electronics',
                      ),
                      ImageLayout(
                        category: 'Beauty',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Featured",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 24.0,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 220,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return ProductCard(
                          title: "Lorem Epsum",
                          price: "\u{20B9} 2500",
                          rating: "Product #${index + 1}",
                          img:
                              'https://picsum.photos/500/300?random=${index + 1}',
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                const Text(
                  "New launches",
                  style: TextStyle(
                    // color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 24.0,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 220,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return ProductCard(
                          title: "Lorem Epsum",
                          price: "\u{20B9} 1200",
                          rating: "Product #${index + 1}",
                          img:
                              'https://picsum.photos/500/300?random=${index + 10}',
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                const Text(
                  "More products",
                  style: TextStyle(
                    // color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 24.0,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 220,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return ProductCard(
                          title: "Lorem Epsum",
                          price: "\u{20B9} 3000",
                          rating: "Product #${index + 1}",
                          img:
                              'https://picsum.photos/500/300?random=${index + 5}',
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
