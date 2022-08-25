import 'package:fireshit/about/about.dart';
import 'package:fireshit/home/home.dart';
import 'package:fireshit/login/login.dart';
import 'package:fireshit/topics/topics.dart';
import 'package:fireshit/profile/profile.dart';

var appRoutes = {
  '/': (context) => const HomeScreen(),
  '/login': (context) => const LoginScreen(),
  '/profile': (context) => const ProfileScreen(),
  '/topics': (context) => const TopicsScreen(),
  '/about': (context) => const AboutScreen(),
};
