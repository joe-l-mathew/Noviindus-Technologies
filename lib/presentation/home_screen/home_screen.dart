import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../constants/colors.dart';
import '../../providers/buslist_provider.dart';
import '../../utilities/bus_list_provider_state.dart';
import '../driver_screen/driver_list_screen.dart';
import 'widgets/box_widget.dart';
import 'widgets/bus_list_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BusListProvider().getBusList(context);
    });

    super.initState();
  }

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
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const BoxWidget(
                  title: "Bus",
                  subTitle: "Manage your Bus",
                  image: "assets/bus.png",
                  bgColor: AppColors.splashScreenColor,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => const DriverListScreen()));
                  },
                  child: const BoxWidget(
                    title: "Driver",
                    subTitle: "Manage your Driver",
                    image: "assets/driver.png",
                    bgColor: AppColors.blackColor,
                  ),
                ),
              ],
            ),
            Expanded(
                child:
                    Provider.of<BusListProviderState>(context).busList == null
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : const BusListWidget())
          ],
        ));
  }
}
