import 'package:fireshit/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:fireshit/login/login.dart';
import 'package:fireshit/topics/topics.dart';
import 'package:fireshit/services/auth.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Center(
  //       child: ElevatedButton(
  //         child: const Text('about'),
  //         onPressed: () => Navigator.pushNamed(context, '/about'),
  //       ),
  //     ),
  //     bottomNavigationBar: const BottomNavBar(),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: AuthService().userStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text('loading');
        } else if (snapshot.hasError) {
          return const Center(
            child: Text('error'),
          );
        } else if (snapshot.hasData) {
          return const TopicsScreen();
        } else {
          return const LoginScreen();
        }
      },
    );
  }
}
