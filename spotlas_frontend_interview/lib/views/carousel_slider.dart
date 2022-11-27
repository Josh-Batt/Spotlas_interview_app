//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:spotlas_frontend_interview/utility/MeasureSizeRenderObject.dart';

final List<String> imgList = [
  'assets/images/test_foods/test-dish1.jpg',
  'assets/images/test_foods/test-dish2.jpg',
  'assets/images/test_foods/test-dish3.jpg',
];

class CarouselSliderTest extends StatefulWidget {
  const CarouselSliderTest({super.key});
  static String id = 'carousel_slider_test';
  @override
  State<CarouselSliderTest> createState() => _CarouselSliderTestState();
}

class _CarouselSliderTestState extends State<CarouselSliderTest> {
  String postImg1 = 'assets/images/test_foods/test-dish1.jpg';
  String postImg2 = 'assets/images/test_foods/test-dish2.jpg';
  String postImg3 = 'assets/images/test_foods/test-dish3.jpg';
  // final List<Widget> imageSliders = imgList
  //     .map(
  //       (item) => Column(
  //         children: <Widget>[
  //           Stack(
  //             children: <Widget>[
  //               Image.asset(
  //                 item,
  //                 fit: BoxFit.cover,
  //               ),
  //             ],
  //           )
  //         ],
  //       ),
  //     )
  //     .toList();

  @override
  Widget build(BuildContext context) {
    final double imgHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Feed',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          _post1(),
        ],
      ),
    );
  }

  Widget _tags() {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          shadowColor: MaterialStateProperty.all<Color>(Colors.black),
        ),
        child: const Text(
          'tag',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _post1() {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            _imgcarousel(),
            const Positioned(
              top: 20,
              left: 20,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.pink,
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/Circle_(transparent).png',
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 25,
              left: 80,
              child: Text(
                'User Handle',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 19),
              ),
            ),
            const Positioned(
              top: 45,
              left: 80,
              child: Text(
                'User Name',
                style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                    fontSize: 19),
              ),
            ),
            Positioned(
              top: 35,
              right: 20,
              child: Image.asset(
                'assets/images/real_imgs/more.png',
                height: 30,
              ),
            ),
            const Positioned(
              bottom: 20,
              left: 20,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 25,
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/snake-on-circle.png'),
                ),
              ),
            ),
            const Positioned(
              bottom: 40,
              left: 80,
              child: Text(
                'Company Handle',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 19),
              ),
            ),
            const Positioned(
              bottom: 20,
              left: 80,
              child: Text(
                'Company Name • Location',
                style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                    fontSize: 19),
              ),
            ),
            Positioned(
              bottom: 30,
              right: 20,
              child: Image.asset(
                'assets/images/real_imgs/not-saved.png',
                height: 30,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/images/real_imgs/maps.png',
              height: 30,
            ),
            Image.asset(
              'assets/images/real_imgs/chat.png',
              height: 30,
            ),
            Image.asset(
              'assets/images/real_imgs/not-liked.png',
              height: 30,
            ),
            Image.asset(
              'assets/images/real_imgs/send.png',
              height: 30,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          alignment: AlignmentDirectional.topStart,
          margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: RichText(
            text: const TextSpan(
              style: TextStyle(
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'UserHandle   ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text:
                      'post asdasdsaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          alignment: AlignmentDirectional.topStart,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                _tags(),
                _tags(),
                _tags(),
                _tags(),
                _tags(),
                _tags(),
                _tags(),
                _tags(),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          alignment: AlignmentDirectional.topStart,
          margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: const Text(
            'x days ago',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Widget _imgcarousel() {
    // final double imgHeight = MediaQuery.of(context).size.height;
    // final double imgWidth = MediaQuery.of(context).size.width;
    // final List<Widget> imageSliders = imgList
    //     .map(
    //       (item) => Column(
    //         children: <Widget>[
    //           Stack(
    //             children: <Widget>[
    //               Image.asset(
    //                 item,
    //                 // fit: BoxFit.cover,
    //                 // height: imgHeight,
    //               ),
    //             ],
    //           )
    //         ],
    //       ),
    //     )
    //     .toList();
    return CarouselSlider.builder(
      itemCount: imgList.length,
      options: CarouselOptions(
        initialPage: 0,
        autoPlay: false,
        viewportFraction: 1,
        height: 500,
        enableInfiniteScroll: false,
        enlargeCenterPage: false,
      ),
      itemBuilder: (context, index, realIdx) {
        return Image.asset(
          imgList[index],
          fit: BoxFit.cover,
        );
      },
    );

    // CarouselSlider(
    //   options: CarouselOptions(
    //     height: 500,
    //     viewportFraction: 1,
    //     enlargeCenterPage: false,
    //     enableInfiniteScroll: false,
    //     initialPage: 0,
    //     autoPlay: false,
    //   ),
    //   items: imageSliders,
    // );
  }

  Widget _imgCarouselv2() {
    return Column(
      // mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  postImg1,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  postImg2,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  postImg3,
                  fit: BoxFit.cover,
                ),
              ]),
        ),
      ],
    );
  }

// Widget _imgCarouselv3() {
//   return CarouselSlider.builder(
//             itemCount: imgList.length,
//             itemBuilder: (BuildContext context, int index, int realIdx) {
//               return Card(
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(20)),
//                 color: Color(0xff3b3b3b),
//                 child: Container(
//                   width: MediaQuery.of(context).size.width,
//                   padding: EdgeInsets.all(15.0),
//                   child: Column(
//                     children: [
//                       Text(
//                         imgList[index],
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 20),
//                       ),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       Column(
//                         children: [
//                            MeasureSize(
//                                       onChange: (size) {
//                                         size = size.height;
//                                         print("log" + height.toString());
//                                         setState(() {});
//                                       },
//                                       height: ,
//                                       child: ListView.builder(
//                                           shrinkWrap: true,
//                                           itemCount: imgList[index]
// .length,
//                                               itemBuilder: (context, i) {
//                                                 return getTimeSlot(
//                                              operationalHours[days[index]][i]);
//                                               }),
//                                         )
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//                 options: new CarouselOptions(
//                     autoPlay: false,
//                     viewportFraction: 1.0,
//                     height: 100 + height,
//                     enlargeCenterPage: false,
//                     enableInfiniteScroll: false,
//                     onPageChanged: (index, reason) {
//                       setState(() {
//                         _current = index;
//                       });
//                     }),
//               ),
// }

}
