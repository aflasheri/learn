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

    return Scaffold(
      backgroundColor: Colors.purple.shade900,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.purple.shade900,
        leading: Icon(
          Icons.vertical_distribute_outlined,
          color: Colors.white,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.network(
                    "https://www.shutterstock.com/image-vector/man-icon-vector-260nw-1040084344.jpg"),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Hi Ghulam",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "dkjfch kdjfbkd kj fkb",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.deepPurple.shade400),
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "oefhsoefi",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "oefhsoefi",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Monthly Review",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                CircleAvatar(
                  child: Icon(Icons.access_time_rounded),
                )
              ],
            ),
            SizedBox(height: 30,),
            StaggeredGridView.countBuilder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              crossAxisCount: 4,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) => Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.deepPurple.shade400),
                  child: Center(
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(children: [
                        const Text("Graphic design",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              alignment: Alignment.topCenter,
                              child: Text("sfi")),
                        )
                      ]),
                    ),
                  )),
              staggeredTileBuilder: (int index) =>
                  StaggeredTile.count(2, index.isEven ? 1.5 : 1),
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
            ),
          ],
        ),
      ),
    );
  }
}
