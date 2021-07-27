import 'package:flutter/material.dart';
import 'package:route_configure/model/post.dart';
import 'package:route_configure/pages/homepage.dart';
import 'package:route_configure/pages/login.dart';
import 'package:route_configure/pages/requestLoan.dart';
import 'package:route_configure/pages/unknow.dart';
import 'package:route_configure/pages/userProfile.dart';
import 'package:route_configure/route/routes.dart';

class Routers {
  static Route<dynamic>? onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case Routes.HOMEPAGE:
        return MaterialPageRoute(builder: (context) => HomePage());
      case Routes.LOGINPAGE:
        var post = setting.arguments as Post;

        return MaterialPageRoute(
            builder: (context) => LoginPage(),
            settings: RouteSettings(arguments: post));
      case Routes.USERPAGE:
        return MaterialPageRoute(builder: (context) => UserProfile());

      case Routes.REQLOANPAGE:
        return MaterialPageRoute(builder: (context) => RequestLoan());
      default:
        return MaterialPageRoute(builder: (context) => UnknowPage());
    }
  }
}
