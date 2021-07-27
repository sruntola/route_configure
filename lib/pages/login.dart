import 'package:flutter/material.dart';
import 'package:route_configure/model/post.dart';
import 'package:route_configure/pages/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const LOGINPAGE = '/login';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Post;

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(args.title!),
      ),
    );
  }
}
