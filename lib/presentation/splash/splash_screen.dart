import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splashScreenColor,
      body: Center(
        //used svg's for more clarity and reduce asset space allocation
        child:
            SvgPicture.asset("assets/logo.svg", semanticsLabel: 'Moovbe Logo'),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {},
        child: Container(
          width: 316,
          height: 58,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: const Center(
              child: Text(
            'Get Started',
            style: TextStyle(
                color: AppColors.splashScreenColor,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          )),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
