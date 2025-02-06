import 'package:get/get.dart';

import '../feature/auth/view/login_screen.dart';
import '../feature/dashboard_screen/view/dashboard_screen.dart';
import '../feature/splash_screen/view/splash_screen.dart';


class AppRoute {
  static String splashScreen = '/splashScreen';
  static String dashboardScreen = '/dashboardScreen';
    static String loginScreen = '/loginScreen';


  static String getSplashScreen() => splashScreen;
  static String getdashboardScreen() => dashboardScreen;
    static String getloginScreen() => loginScreen;


  static List<GetPage> routes = [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: dashboardScreen, page: () => DashBoardScreen()),
    GetPage(name: loginScreen, page: () => AuthScreen()),
  ];
}