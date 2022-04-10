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
        appBar: AppBar(title: Text("Tutorial ")),
        body: Container(
          // padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome user",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 23),
                      ),
                      Text(
                        "12 courses completed",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
              ImageSlider(),
              SizedBox(
                height: 50,
                child: AppBar(
                  backgroundColor: Colors.white,
                  bottom: TabBar(
                    tabs: [
                      Tab(
                        icon: Text(
                          "Purchased",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                      Tab(
                        icon: Text(
                          "All",
                          style: TextStyle(color: Colors.blue),
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
                        color: Colors.white,
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
