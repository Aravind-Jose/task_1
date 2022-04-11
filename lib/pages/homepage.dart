import 'package:flutter/material.dart';
import 'package:task_1/widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 3, 21, 34),
        appBar: AppBar(
          actions: [
            GestureDetector(
              child: Icon(Icons.more_vert),
              onTap: () {},
            ),
          ],
          automaticallyImplyLeading: false,
          title: Text("Tutorial "),
          backgroundColor: Color.fromARGB(255, 26, 82, 112),
        ),
        body: Container(
          color: Color.fromARGB(255, 3, 21, 34),
          // padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 80,
                width: double.infinity,
                // decoration: BoxDecoration(
                //   //color: Colors.white,
                //   color: Color.fromARGB(255, 26, 82, 112),
                //   boxShadow: [
                //     BoxShadow(
                //       //spreadRadius: 5,
                //       blurRadius: 5,
                //       // offset: Offset(0, 2),
                //     ),
                //   ],
                //   borderRadius: BorderRadius.circular(20),
                //   border: Border.all(
                //     color: Color.fromARGB(255, 26, 82, 112),
                //   ),
                // ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome user",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                            color: Colors.white),
                      ),
                      Text(
                        "12 courses completed",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              ImageSlider(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Courses",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 50,
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  //backgroundColor: Color.fromARGB(0, 26, 82, 112),
                  bottom: TabBar(
                    indicator: BoxDecoration(
                        // color: Color.fromARGB(255, 26, 82, 112),
                        border:
                            Border(bottom: BorderSide(color: Colors.white))),
                    // indicatorColor: Colors.white,
                    // indicatorSize: TabBarIndicatorSize.tab,
                    // labelPadding: EdgeInsets.all(0),
                    // indicatorPadding: EdgeInsets.all(0),
                    tabs: [
                      Tab(
                        icon: Text(
                          "Purchased",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Tab(
                        icon: Text(
                          "All",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // create widgets for each tab bar here
              Expanded(
                child: TabBarView(
                  children: [
                    // first tab bar view widget
                    SingleChildScrollView(
                      child: Container(
                        color: Color.fromARGB(255, 3, 21, 34),
                        child: Column(
                          children: [
                            CusContainer(
                                t1: "Flutter Basics",
                                t2: "3/14 chapters completed",
                                butname: "contiune",
                                imgname:
                                    "https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                            CusContainer(
                                t1: "Flutter Basics",
                                t2: "3/14 chapters completed",
                                butname: "contiune",
                                imgname:
                                    "https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                            CusContainer(
                                t1: "Flutter Basics",
                                t2: "3/14 chapters completed",
                                butname: "contiune",
                                imgname:
                                    "https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                          ],
                        ),
                      ),
                    ),

                    // second tab bar viiew widget
                    SingleChildScrollView(
                      child: Container(
                        color: Color.fromARGB(255, 3, 21, 34),
                        child: Column(
                          children: [
                            CusContainer(
                                t1: "Flutter Basics",
                                t2: "3/14 chapters completed",
                                butname: "contiune",
                                imgname:
                                    "https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                            CusContainer(
                                t1: "Flutter Basics",
                                t2: "3/14 chapters completed",
                                butname: "contiune",
                                imgname:
                                    "https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                            CusContainer(
                                t1: "Flutter Basics",
                                t2: "3/14 chapters completed",
                                butname: "contiune",
                                imgname:
                                    "https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
