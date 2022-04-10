import 'package:flutter/material.dart';
import 'package:task_1/widget.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Flutter develpoment"),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Text("Chapters"),
              ),
              Tab(
                icon: Text("Practice"),
              ),
              Tab(
                icon: Text("Tests"),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  CusContainer(
                      t1: "Installation",
                      t2: "10:30 Minutes",
                      butname: "icont",
                      imgname:
                          "https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                  CusContainer(
                      t1: "Basis of Dart",
                      t2: "15 Minutes",
                      butname: "iconp",
                      imgname:
                          "https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                  CusContainer(
                      t1: "UI Basis",
                      t2: "20:00 Minutes",
                      butname: "iconl",
                      imgname:
                          "https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                ],
              ),
            ),
          ),
          PracticeTab(),
          SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  CusContainer(
                      t1: "Installation",
                      t2: "10:30 Minutes",
                      butname: "icont",
                      imgname:
                          "https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                  CusContainer(
                      t1: "Basis of Dart",
                      t2: "15 Minutes",
                      butname: "iconp",
                      imgname:
                          "https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                  CusContainer(
                      t1: "UI Basis",
                      t2: "20:00 Minutes",
                      butname: "iconl",
                      imgname:
                          "https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
