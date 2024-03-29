import 'package:flutter/material.dart';

import '../pages/authentication/login_Page.dart';
import '../pages/authentication/screens/login_page.dart';
import 'main_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const LoginPageNew()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              height: 300,
              child: Image(
                image: AssetImage('assets/images/online-shop.png'),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            // SizedBox(
            //   width: double.infinity,
            //   child: SpinKitDoubleBounce(
            //     color: Colors.white,
            //     size: 50.0,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
