// import 'dart:nativewrappers/_internal/vm/lib/async_patch.dart';

import 'package:flutter/material.dart';
import 'package:netflix_dec/utils/color_constants.dart';
// import 'package:netflix_dec/view/user_name_screen/user_name_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // void initState() {
  //   Timer() {
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => UserNameScreen(),
  //       ),
  //     );
  //   }

  //   ;
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("assets/Netflix-Logo.png"),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(
              color: ColorConstants.mainWhite,
            ),
          ],
        ),
      ),
    );
  }
}
