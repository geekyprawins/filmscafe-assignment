import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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
                items: imageSliders,
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
              SizedBox(
                height: 250,
                child: TabBarView(
                  children: [
                    // first tab bar view widget
                    Container(
                      color: Colors.red,
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            color: Colors.blue,
                            child: Image.network(
                              'https://images.unsplash.com/photo-1577702312572-5bb9328a9f15?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            // color: Colors.greenAccent,
                            child: Column(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.50,
                                  height: 125,
                                  color: Colors.pink,
                                  child: Image.network(
                                    "https://images.unsplash.com/photo-1605086998852-18371cfd9b2e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.50,
                                  height: 125,
                                  color: Colors.yellowAccent,
                                  child: Image.network(
                                    "https://images.unsplash.com/photo-1554260570-9140fd3b7614?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    // second tab bar viiew widget
                    Container(
                      color: Colors.red,
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            color: Colors.blue,
                            child: Image.network(
                              'https://images.unsplash.com/photo-1562157873-818bc0726f68?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=327&q=80',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            // color: Colors.greenAccent,
                            child: Column(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.50,
                                  height: 125,
                                  color: Colors.pink,
                                  child: Image.network(
                                    "https://images.unsplash.com/photo-1560243563-062bfc001d68?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.50,
                                  height: 125,
                                  color: Colors.yellowAccent,
                                  child: Image.network(
                                    "https://images.unsplash.com/photo-1489987707025-afc232f7ea0f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.red,
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            color: Colors.blue,
                            child: Image.network(
                              "https://images.unsplash.com/photo-1593344484962-796055d4a3a4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=415&q=80",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            // color: Colors.greenAccent,
                            child: Column(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.50,
                                  height: 125,
                                  color: Colors.pink,
                                  child: Image.network(
                                    "https://images.unsplash.com/photo-1615655406736-b37c4fabf923?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.50,
                                  height: 125,
                                  color: Colors.yellowAccent,
                                  child: Image.network(
                                    "https://images.unsplash.com/photo-1505751171710-1f6d0ace5a85?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.red,
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            color: Colors.blue,
                            child: Image.network(
                              "https://images.unsplash.com/photo-1631390179406-0bfe17e9f89d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=396&q=80",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            // color: Colors.greenAccent,
                            child: Column(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.50,
                                  height: 125,
                                  color: Colors.pink,
                                  child: Image.network(
                                    "https://images.unsplash.com/photo-1586220742613-b731f66f7743?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.50,
                                  height: 125,
                                  color: Colors.yellowAccent,
                                  child: Image.network(
                                    "https://images.unsplash.com/photo-1515688594390-b649af70d282?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=806&q=80",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
                      return Appoutlook(
                        title: "Lorem Epsum",
                        price: "#19.99",
                        rating: "Product #${index + 1}",
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
                      return Appoutlook(
                        title: "Lorem Epsum",
                        price: "#19.99",
                        rating: "Product #${index + 1}",
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
                      return Appoutlook(
                        title: "Lorem Epsum",
                        price: "#19.99",
                        rating: "Product #${index + 1}",
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          )),
        ),
      ),
    );
  }
}

final List<String> imgList = [
  'https://images.unsplash.com/photo-1527383214149-cb7be04ae387?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
  'https://images.unsplash.com/photo-1525562723836-dca67a71d5f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
  'https://images.unsplash.com/photo-1523381210434-271e8be1f52b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
  'https://images.unsplash.com/photo-1420161900862-9a86fa1f5c79?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80',
  'https://images.unsplash.com/photo-1441984344779-4716bd9e6b04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=952&q=80',
  'https://images.unsplash.com/photo-1453761816053-ed5ba727b5b7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=849&q=80',
  'https://images.unsplash.com/photo-1473187983305-f615310e7daa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
];
final List<Widget> imageSliders = imgList
    .map(
      (item) => Container(
        margin: const EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(5.0),
          ),
          child: Stack(
            children: <Widget>[
              Image.network(item, fit: BoxFit.cover, width: 1000.0),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 20.0,
                  ),
                  // child: Text(
                  //   'No. ${imgList.indexOf(item)} image',
                  //   style: TextStyle(
                  //     color: Colors.white,
                  //     fontSize: 20.0,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                ),
              ),
            ],
          ),
        ),
      ),
    )
    .toList();

class Appoutlook extends StatelessWidget {
  const Appoutlook({
    Key? key,
    required this.rating,
    required this.title,
    required this.price,
  }) : super(key: key);
  final String rating;
  final String title;
  final String price;
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
                  'https://picsum.photos/200/300',
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
                textAlign: TextAlign.start, //Textstyle
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
