import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: TextField(
          onChanged: (val) {},
          // controller: searchController,
          cursorColor: Colors.grey,
          decoration: InputDecoration(
              fillColor: Colors.grey.shade200,
              filled: true,
              hintText: 'Search Product',
              prefixIconConstraints:
                  BoxConstraints.loose(const Size.fromWidth(50)),
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Image.asset(
                  'assets/search.png',
                  fit: BoxFit.fill,
                  width: w / 6,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 15),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(15),
              )),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Icon(Icons.shopping_cart_outlined,
                      color: Colors.black45)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Icon(Icons.notifications_none, color: Colors.black45)),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.deepPurple.shade400),
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Summer Surprice",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Cashback 20%",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: h / 9,
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.deepOrange.shade100
                                        .withOpacity(0.80),
                                    borderRadius: BorderRadius.circular(8)),
                                // height: 10,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Icon(Icons.access_alarms,
                                      color: Colors.deepOrange.shade300),
                                )),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "flash Deal",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            const Text(
              "Special For You",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            CarouselSlider.builder(
                options: CarouselOptions(
                    height: h / 7,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    enableInfiniteScroll: false,
                    viewportFraction: 0.8),
                itemCount: 5,
                itemBuilder: (BuildContext context, int itemIndex,
                        int pageViewIndex) =>
                    SizedBox(
                      // height: h / 4,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwoCiWbGzK-JG-_pnQmS0ImvIyF0KCNsdy-w&usqp=CAU'),
                              fit: BoxFit.cover),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: h / 40,
                              left: w / 25,
                              width: w / 1.8,
                              height: h / 3.4,
                              child: Container(
                                // color: Colors.red[400],
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Smart Phone',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    Text(
                                      "18 branches",
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.70),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
            SizedBox(
              height: 15,
            ),
            Text(
              "Popular Products",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: h / 7,
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(8)),
                        child: Image.asset(
                          'assets/this.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  }),
            ),
            // StaggeredGridView.countBuilder(
            //   shrinkWrap: true,
            //   physics: const BouncingScrollPhysics(),
            //   crossAxisCount: 4,
            //   itemCount: 4,
            //   itemBuilder: (BuildContext context, int index) => Container(
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(10),
            //           color: Colors.deepPurple.shade400),
            //       child: Center(
            //         child: Align(
            //           alignment: Alignment.center,
            //           child: Column(children: [
            //             const Text("Graphic design",
            //                 style: TextStyle(
            //                   fontSize: 14,
            //                   fontWeight: FontWeight.w500,
            //                   color: Colors.white,
            //                 )),
            //             Padding(
            //               padding: const EdgeInsets.all(8.0),
            //               child: Container(
            //                   alignment: Alignment.topCenter,
            //                   child: const Text("sfi")),
            //             )
            //           ]),
            //         ),
            //       )),
            //   staggeredTileBuilder: (int index) =>
            //       StaggeredTile.count(2, index.isEven ? 1.5 : 1),
            //   mainAxisSpacing: 20,
            //   crossAxisSpacing: 20,
            // ),
          ],
        ),
      ),
    );
  }
}
