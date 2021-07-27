import 'package:flutter/material.dart';
import 'package:route_configure/model/post.dart';
import 'package:route_configure/pages/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text('My App'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  LoginPage.LOGINPAGE,
                  arguments: Post(id: '01', title: 'Test'),
                );
              },
              child: Text('Go to Page'))
        ],
      ),
    );
  }
}

class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}
