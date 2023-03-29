import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../widgets/button_widget.dart';
import 'text_field_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final passwordController = TextEditingController();
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Container(
                color: AppColors.blackColor,
                height: 266,
                width: size.width,
                child: Transform.rotate(
                  alignment: Alignment.centerRight,
                  angle: 120,
                  child: Container(
                    height: 290,
                    width: size.width,
                    color: AppColors.splashScreenColor,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 40, left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 41,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Manage your Bus And Drivers",
                      style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          //bottom Part
          const SizedBox(
            height: 20,
          ),
          TextFormFieldWidget(
            controller: nameController,
            hintText: "Enter Username",
          ),
          const SizedBox(
            height: 20,
          ),

          TextFormFieldWidget(
            controller: passwordController,
            hintText: "Enter Password",
          ),
          const Spacer(),
          ButtonWidget(
            buttonColor: AppColors.splashScreenColor,
            textColor: AppColors.whiteColor,
            text: "Login",
            onPressed: () {},
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
