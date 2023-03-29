import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/colors.dart';
import 'widgets/box_widget.dart';
import 'widgets/bus_list_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 90, // Set this height
          flexibleSpace: Container(
            color: AppColors.blackColor,
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                SvgPicture.asset("assets/logo.svg",
                    height: 50, semanticsLabel: 'Moovbe Logo'),
              ],
            ),
          ),
        ),
        body: const Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BoxWidget(
                  title: "Bus",
                  subTitle: "Manage your Bus",
                  image: "assets/bus.png",
                  bgColor: AppColors.splashScreenColor,
                ),
                BoxWidget(
                  title: "Driver",
                  subTitle: "Manage your Bus",
                  image: "assets/driver.png",
                  bgColor: AppColors.blackColor,
                ),
              ],
            ),
            Expanded(child: BusListWidget())
          ],
        ));
  }
}
