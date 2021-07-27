import 'package:flutter/material.dart';
import 'package:route_configure/pages/homepage.dart';
import 'package:route_configure/route/routes.dart';
import 'package:route_configure/route/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routers.onGenerateRoute,
      initialRoute: Routes.HOMEPAGE,
    );
  }
}
