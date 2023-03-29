import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/colors.dart';

class BusScreen extends StatelessWidget {
  final int indexOfVacancy;
  final String driverName;
  final String licenseNo;
  const BusScreen(
      {super.key,
      required this.indexOfVacancy,
      required this.driverName,
      required this.licenseNo});

  @override
  Widget build(BuildContext context) {
    // this reffers to 2 when 2x2 and 1 when 1x3
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blackColor,
        title: const Text("KSRTC Swift Scania P-​series"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Container(
                  height: 116,
                  width: size.width - 70,
                  decoration: BoxDecoration(
                    color: AppColors.blackColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: Image.asset('assets/driver.png')),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        driverName,
                        style: const TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "License no: $licenseNo",
                        style: const TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 10,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          Center(
            child: Container(
              height: size.height * 0.6,
              width: size.width - size.width * 0.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: AppColors.greyColor)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(10, (columnIndex) {
                    if (columnIndex == 0) {
                      return Padding(
                        padding: EdgeInsets.only(right: size.width * 0.07),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: SvgPicture.asset(
                            'assets/seat.svg',
                            color: AppColors.blackColor,
                          ),
                        ),
                      );
                    }
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(5, (rowIndex) {
                        if (rowIndex == indexOfVacancy) {
                          return const SizedBox(
                            width: 32,
                          );
                        }
                        return SvgPicture.asset('assets/seat.svg');
                      }),
                    );
                  })),
            ),
          )
        ],
      ),
    );
  }
}
