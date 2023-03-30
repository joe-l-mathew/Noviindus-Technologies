import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../bus_screen/bus_screen.dart';

class BusListWidget extends StatelessWidget {
  const BusListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "21 Buses Found",
            style: TextStyle(color: AppColors.greyColor, fontSize: 13),
          ),
        ),
        Expanded(
            child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 21,
          itemBuilder: (context, index) => Card(
            child: ListTile(
              // ignore: prefer_const_constructors
              title: Text("KSRTC"),
              subtitle: const Text("Swift Scania P-Series"),
              leading: Container(
                // color: Colors.red,
                height: 73,
                width: 79,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/bus2.png"),
                  ),
                ),
              ),
              trailing: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        // <-- SEE HERE
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(25.0),
                        ),
                      ),
                      builder: (context) {
                        return SizedBox(
                          height: 150,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "SELECT LAYOUT",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                ListTile(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (builder) =>
                                                const BusScreen(
                                                    indexOfVacancy: 2,
                                                    driverName: "Rohit Sharme",
                                                    licenseNo: "licenseNo")));
                                  },
                                  title: const Text(
                                    '2 x 2',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                ListTile(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (builder) =>
                                                const BusScreen(
                                                    indexOfVacancy: 1,
                                                    driverName: "Rohit Sharme",
                                                    licenseNo: "licenseNo")));
                                  },
                                  title: const Text(
                                    '1 x 3',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ]),
                        );
                      });
                },
                child: Container(
                  height: 30,
                  width: 70,
                  decoration: BoxDecoration(
                    color: AppColors.splashScreenColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(
                    child: Text(
                      "Manage",
                      style:
                          TextStyle(color: AppColors.whiteColor, fontSize: 10),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ))
      ],
    );
  }
}
