import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task_1/pages/coursepage.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int currind = 0;
  @override
  final imgs = [
    'https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  ];
  Widget buildimg(String name, int index) {
    return Container(
        //width: 350,
        margin: EdgeInsets.all(2.5),
        child: CachedNetworkImage(
          imageUrl: name,
          fit: BoxFit.cover,
        ));
  }

  Widget indicat() {
    return AnimatedSmoothIndicator(
        effect: JumpingDotEffect(
          dotHeight: 20,
          dotColor: Colors.white,
          activeDotColor: Colors.blue,
          dotWidth: 20,
        ),
        activeIndex: currind,
        count: imgs.length);
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
            itemCount: imgs.length,
            itemBuilder: (context, index, realIndex) {
              final currimg = imgs[index];
              return buildimg(currimg, index);
            },
            options: CarouselOptions(
                height: 200,
                //aspectRatio: 16 / 9,
                autoPlay: true,
                //enlargeCenterPage: true,
                viewportFraction: .55,
                //pageSnapping: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    currind = index;
                  });
                })),
        indicat(),
      ],
    );
  }
}

class CusContainer extends StatelessWidget {
  final String t1, t2, butname, imgname;
  const CusContainer({
    Key? key,
    required this.t1,
    required this.t2,
    required this.butname,
    required this.imgname,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 120,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 26, 82, 112),
        boxShadow: [
          BoxShadow(
            //spreadRadius: 5,
            blurRadius: 5,
            // offset: Offset(0, 2),
          ),
        ],
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Color.fromARGB(255, 26, 82, 112),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 80,
            height: 80,
            child: CachedNetworkImage(
              imageUrl: imgname,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    t1,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    t2,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          butname.contains("icon")
              ? (butname == "icont"
                  ? CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blue,
                      child: IconButton(
                          color: Colors.white,
                          padding: const EdgeInsets.all(10),
                          iconSize: 30,
                          onPressed: () {},
                          icon: Icon(Icons.check)),
                    )
                  : (butname == "iconp"
                      ? CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.blue,
                          child: IconButton(
                              padding: const EdgeInsets.all(10),
                              iconSize: 30,
                              color: Colors.white,
                              onPressed: () {},
                              icon: Icon(
                                Icons.play_arrow,
                              )),
                        )
                      : CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.blue,
                          child: IconButton(
                              padding: const EdgeInsets.all(10),
                              iconSize: 30,
                              color: Colors.white,
                              onPressed: () {},
                              icon: Icon(Icons.lock)))))
              : ElevatedButton(
                  onPressed: () {
                    Get.to(CoursePage());
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  child: Text("continue")),
        ],
      ),
    );
  }
}

class PracticeTab extends StatelessWidget {
  const PracticeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 250,
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              //spreadRadius: 5,
              blurRadius: 5,
              // offset: Offset(0, 2),
            ),
          ],
          color: Color.fromARGB(255, 6, 51, 75),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: Color.fromARGB(255, 6, 51, 75),
          ),
        ),
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Text(
                  "Login Page UI",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      color: Colors.white),
                ),
                Expanded(child: SizedBox()),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                    child: Text("START")),
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                  ),
                  width: 80,
                  height: 100,
                  child: CachedNetworkImage(
                    imageUrl:
                        "https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: 80,
                  height: 100,
                  child: CachedNetworkImage(
                    imageUrl:
                        "https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Text(
              "Estimated time 1 Day",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
