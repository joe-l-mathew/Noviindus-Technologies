import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/colors.dart';
import '../../widgets/button_widget.dart';
import '../login/login_screen.dart';

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
      floatingActionButton: ButtonWidget(
        textColor: AppColors.splashScreenColor,
        buttonColor: Colors.white,
        text: 'Get Started',
        onPressed: () {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (builder) => const LoginScreen()),
              (route) => false);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
