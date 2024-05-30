import 'package:bedhere/modules/home_page/pages/home_page.dart';
import 'package:bedhere/modules/login_page/pages/login_page.dart';
import 'package:bedhere/modules/splash_page/pages/splash_page.dart';
import 'package:flutter/material.dart';

import '../../modules/not_found_page/pages/page_404.dart';

class AppRoutes {
  static const initialRoute = '/splash';

  static Map<String,Widget Function(BuildContext)> routes = {
    '/splash' : (_) => SplashPage(),
    '/home_page' : (_) => HomePage(),
    '/login_page' : (_) => LoginPage(),
    
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const PageNotFound(),
      //builder: (context) => const LoadingPage(),
    );
  }
}