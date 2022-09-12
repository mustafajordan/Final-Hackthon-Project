import 'package:ailearns/view/home.dart';
import 'package:ailearns/view/login.dart';
import 'package:ailearns/view/welcome.dart';
import 'package:get/get.dart';

class GetRoutes{
  static const String login = "/login";
  static const String register = "/register";
  static const String home = "/home";
  static const String welcome = "/welcome";
  static List<GetPage> routes= [
    GetPage(
      name: GetRoutes.login,
     page: () =>  LoginPage()
     ),
      GetPage(
      name: GetRoutes.home,
     page: () =>  HomeScreen()
     ),
     GetPage(name: GetRoutes.welcome,
      page: ()=> WelcomeScreen()
      )
  ];
}