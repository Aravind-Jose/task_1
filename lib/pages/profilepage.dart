import 'dart:ui';

import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(

      //   backgroundColor: Colors.transparent,
      //   elevation: 0.0,
      //   title: Text(
      //     "Profile",
      //     textAlign: TextAlign.center,
      //     style: TextStyle(
      //         fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 30, right: 30, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
                child: Text(
              "Profile",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )),
            Row(
              children: [
                // ClipRRect(
                //   borderRadius: BorderRadius.circular(400),
                //   child: const Image(
                //     color: Colors.amberAccent,
                //     width: 80,
                //     height: 80,
                //     image: NetworkImage(
                //         'https://www.tutorialkart.com/img/hummingbird.png'),
                //   ),
                // ),
                CircleAvatar(
                  backgroundImage: AssetImage('images/arrpng.png'),
                  radius: 40,
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "RAJU K U",
                      // textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        "Profeesional Teacher",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              padding: EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        "35g",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text("pro")
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "35g",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text("pro")
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "35g",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text("pro")
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                custext(txt1: "Daily Calories", txt2: "1800-2000"),
                Expanded(child: SizedBox()),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.orange),
                  onPressed: () {},
                  child: Text("EDIT"),
                ),
                SizedBox(
                  width: 20,
                )
              ],
            ),
            Row(
              children: [
                custext(
                    txt1: "Nutrient Distribution",
                    txt2: "Protein(40%) Carbs(35%)"),
              ],
            ),
            custext(
                txt1: "My Collection", txt2: "Already collected 40 recipes"),
            custext(
                txt1: "Favorite Meals", txt2: "45 meals saved on favorites"),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/login.jpg'),
                  radius: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('images/login.jpg'),
                  radius: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('images/login.jpg'),
                  radius: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  //backgroundImage: AssetImage('images/login.jpg'),
                  radius: 20,
                  backgroundColor: Colors.orange,
                  child: Text(
                    "40+",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class custext extends StatelessWidget {
  final String txt1, txt2;
  const custext({
    Key? key,
    required this.txt1,
    required this.txt2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            txt1,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(txt2)
        ],
      ),
    );
  }
}
