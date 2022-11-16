import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);
  static String id = 'feed_page';
  @override
  State<FeedPage> createState() => FeedPageState();
}

class FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Feed', // TODO: make look more like the scratch version
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            Container(
              height: 500,
              child: Stack(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      // TODO: link to API post pictures
                      child: Image.asset(
                        'assets/images/template_insta_post.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 15,
                    left: 25,
                    child: Row(
                      children: [
                        const CircleAvatar(
                          // TODO: link to API user pictures
                          radius: 25,
                          backgroundColor: Colors.pink,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              'assets/images/Circle_(transparent).png',
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: const Alignment(-0.5, -0.5),
                              child: const Text(
                                'users handle',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Container(
                              alignment: const Alignment(-0.5, -0.5),
                              child: const Text(
                                'users name',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 290,
                    left: 25,
                    child: Row(
                      children: [
                        const CircleAvatar(
                          // TODO: link to API company pictures
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/snake-on-circle.png'),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: const Alignment(-0.5, -0.5),
                              child: const Text(
                                'company handle',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Container(
                              alignment: const Alignment(-0.5, -0.5),
                              child: const Text(
                                'company name',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment(0, 0),
                  height: 50,
                  width: 50,
                  child: Image.asset('assets/images/real_imgs/maps.png'),
                ),
                Container(
                  alignment: Alignment(0, 0),
                  height: 50,
                  width: 50,
                  child: Image.asset('assets/images/real_imgs/chat.png'),
                ),
                Container(
                  alignment: Alignment(0, 0),
                  height: 50,
                  width: 50,
                  child: Image.asset('assets/images/real_imgs/not-liked.png'),
                ),
                Container(
                  alignment: Alignment(0, 0),
                  height: 50,
                  width: 50,
                  child: Image.asset('assets/images/real_imgs/send.png'),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  height: 75,
                  width: 25,
                ),
                const Text(
                  'users handle',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                Text(
                  'users written post',
                  style: TextStyle(
                    color: Colors.purple,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 100,
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
