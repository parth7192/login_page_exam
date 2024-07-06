import 'package:flutter/material.dart';
import 'package:login_page/screen/pages/home_page/home_page.dart';
import 'package:login_page/screen/pages/login_page/login_page.dart';
import 'package:login_page/screen/pages/signup_page/signup_page.dart';

class AppRoutes {
  static const String loginpage = "login_page";
  static const String homepage = "home_page";
  static const String signuppage = "signup_page";

  static Map<String, Widget Function(BuildContext)> routes = {
    loginpage: (context) => const LoginPage(),
    homepage: (context) => const HomePage(),
    signuppage: (context) => const SignupPage(),
  };
}
