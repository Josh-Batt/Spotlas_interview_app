import 'package:flutter/material.dart';
import 'package:spotlas_frontend_interview/views/endpoint_testing.dart';
import 'views/feed_page.dart';
import 'views/endpoint_testing.dart';
import 'views/feed_page_v2.dart';
import 'views/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          backgroundColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
          ),
        ),
        initialRoute: FeedPageV2.id,
        routes: {
          FeedPage.id: (context) => FeedPage(),
          TestingPage.id: (context) => TestingPage(),
          FeedPageV2.id: (context) => FeedPageV2(),
          CarouselSliderTest.id: (context) => CarouselSliderTest(),
        });
  }
}
