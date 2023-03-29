import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../widgets/button_widget.dart';

class DriverScreen extends StatelessWidget {
  const DriverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blackColor,
        title: Text("Driver List"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "21 Drivers Found",
              style: TextStyle(color: AppColors.greyColor, fontSize: 13),
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => Card(
              child: ListTile(
                // ignore: prefer_const_constructors
                title: Text("KSRTC"),
                subtitle: const Text("Swift Scania P-Series"),
                leading: Container(
                  color: Colors.red,
                  height: 73,
                  width: 79,
                ),
                trailing: Container(
                  height: 30,
                  width: 70,
                  decoration: BoxDecoration(
                    color: AppColors.splashScreenColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
          ))
        ],
      ),
      floatingActionButton: ButtonWidget(
          textColor: AppColors.whiteColor,
          buttonColor: AppColors.splashScreenColor,
          text: "Add Driver",
          onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
