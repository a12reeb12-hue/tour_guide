import 'package:get/get.dart';
import 'package:travel_dna/main.dart';
import 'package:travel_dna/screens/admin/dashboard.dart';
import 'package:travel_dna/screens/authentication/login.dart';

class AppRoutes {

  static const login = '/';
  static const dashboard = '/dashboard';

  static final pages = [

    GetPage(
      name: login,
      page: () => LoginScreen(),
      // middlewares: [AuthMiddleware()]
    ),
    GetPage(
      name: dashboard,
      page: () => AdminDashboard(),
      // middlewares: [AuthMiddleware()]
    ),

  ];
}