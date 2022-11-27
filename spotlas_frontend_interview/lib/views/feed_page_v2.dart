//import 'dart:ui';

import 'package:flutter/material.dart';

class FeedPageV2 extends StatefulWidget {
  const FeedPageV2({super.key});
  static String id = 'feed_page_v2';
  @override
  State<FeedPageV2> createState() => _FeedPageV2State();
}

class _FeedPageV2State extends State<FeedPageV2> {
  String postImg1 = 'assets/images/test_foods/test-dish1.jpg';
  String postImg2 = 'assets/images/test_foods/test-dish2.jpg';
  String postImg3 = 'assets/images/test_foods/test-dish3.jpg';
  @override
  Widget build(BuildContext context) {
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
          _post2(),
          _post3(),
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
            Image.asset(
              postImg1,
              fit: BoxFit.cover,
            ),
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

  Widget _post2() {
    return Column(
      children: <Widget>[
        Stack(children: <Widget>[
          Image.asset(
            postImg2,
            fit: BoxFit.cover,
          ),
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
        ]),
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

  Widget _post3() {
    return Column(
      children: <Widget>[
        Stack(children: <Widget>[
          Image.asset(
            postImg3,
            fit: BoxFit.cover,
          ),
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
        ]),
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
                ],
              )),
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
}
