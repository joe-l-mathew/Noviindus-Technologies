import 'package:flutter/material.dart';

import '../../constants/colors.dart';

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
          TextFormFieldWidget(
            controller: nameController,
            hintText: "Enter Username",
          ),

          TextFormFieldWidget(
            controller: passwordController,
            hintText: "Enter Password",
          )
        ],
      ),
    );
  }
}

class TextFormFieldWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const TextFormFieldWidget({
    super.key,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.textFormFieldColor,
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: hintText,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  width: 3, color: AppColors.textFormFieldColor),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ),
    );
  }
}
