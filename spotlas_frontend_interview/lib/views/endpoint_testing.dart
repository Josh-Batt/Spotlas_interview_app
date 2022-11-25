import 'package:flutter/material.dart';
import '../services/api_service.dart';
import '../models/user_model.dart';
import 'dart:async';

class TestingPage extends StatefulWidget {
  const TestingPage({super.key});
  static String id = 'endpoint-testing';
  @override
  State<TestingPage> createState() => _TestingPageState();
}

class _TestingPageState extends State<TestingPage> {
  late List<UserModel>? _userModel = [];
  String? _id;
  bool isLoaded = false;

  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    _userModel = (await ApiService().getUsers());
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {
          isLoaded = true;
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Testing API',
        ),
      ),
      body: Visibility(
        visible: isLoaded,
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),
        child: ListView.builder(
          itemCount: _id?.length,
          itemBuilder: (context, index) {
            return Container(
              child: Text(index.toString()),
            );
          },
        ),
      ),
    );
  }
}
