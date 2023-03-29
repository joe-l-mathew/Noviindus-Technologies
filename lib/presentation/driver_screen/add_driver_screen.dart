import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../widgets/button_widget.dart';
import '../login/text_field_widget.dart';

class AddDriverScreen extends StatelessWidget {
  const AddDriverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final licenceNoController = TextEditingController();
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blackColor,
        title: Text("Add Driver"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.05,
            ),
            TextFormFieldWidget(
                hintText: "Enter Name", controller: nameController),
            SizedBox(
              height: size.height * 0.02,
            ),
            TextFormFieldWidget(
                hintText: "Enter License Numeber",
                controller: licenceNoController)
          ],
        ),
      ),
      floatingActionButton: ButtonWidget(
          textColor: AppColors.whiteColor,
          buttonColor: AppColors.splashScreenColor,
          text: "Save",
          onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
