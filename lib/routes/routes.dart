import 'package:get/get.dart';

import '../screens/login_screen.dart';
import '../screens/signup_screen.dart';
import '../screens/welcome_screen.dart';
import '../widgets/custom_bottom_navigation.dart';

final appRoutes = [
  GetPage(
    name: '/',
    page: () => const WelcomeScreen(),
  ),
  GetPage(
    name: '/login',
    page: () => const LoginScreen(),
  ),
  GetPage(
    name: '/signup',
    page: () => const SignupScreen(),
  ),
  GetPage(
    name: '/bottomNavigation',
    page: () => const CustomBottomNavigation(),
  )
];
