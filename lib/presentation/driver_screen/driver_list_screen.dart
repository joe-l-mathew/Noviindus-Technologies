import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constants/colors.dart';
import '../../providers/driver_list_provider.dart';
import '../../providers/driver_management.dart';
import '../../utilities/driver_list_provider_state.dart';
import '../../widgets/button_widget.dart';
import 'add_driver_screen.dart';

class DriverListScreen extends StatefulWidget {
  const DriverListScreen({super.key});

  @override
  State<DriverListScreen> createState() => _DriverListScreenState();
}

class _DriverListScreenState extends State<DriverListScreen> {
  @override
  void initState() {
    
    WidgetsBinding.instance.addPostFrameCallback((_) {
      DriverListProvider().getDriverList(context);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blackColor,
        title: const Text("Driver List"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Provider.of<DriverListProviderState>(context)
                          .driverModel ==
                      null
                  ? const Text(
                      "Loading",
                      style:
                          TextStyle(color: AppColors.greyColor, fontSize: 13),
                    )
                  : Text(
                      "${Provider.of<DriverListProviderState>(context).driverModel!.driverList.length} Drivers Found")),
          Expanded(
              child: Provider.of<DriverListProviderState>(context)
                          .driverModel ==
                      null
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView.builder(
                      itemCount: Provider.of<DriverListProviderState>(context)
                          .driverModel
                          ?.driverList
                          .length,
                      itemBuilder: (context, index) => Card(
                        child: ListTile(
                          // ignore: prefer_const_constructors
                          title: Text(
                              Provider.of<DriverListProviderState>(context)
                                  .driverModel!
                                  .driverList[index]
                                  .name),
                          subtitle: Text(
                              "Licn no: ${Provider.of<DriverListProviderState>(context).driverModel!.driverList[index].licenseNo}"),
                          leading: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                image: const DecorationImage(
                                    image: AssetImage(
                                      'assets/driver2.png',
                                    ),
                                    fit: BoxFit.cover),
                                color: Colors.red),
                          ),
                          trailing: GestureDetector(
                            onTap: () {
                              //delete button action
                              DriverManagement().deleteDriver(
                                  Provider.of<DriverListProviderState>(context,
                                          listen: false)
                                      .driverModel!
                                      .driverList[index]
                                      .id,
                                  context);
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
                                  "Delete",
                                  style: TextStyle(
                                      color: AppColors.whiteColor,
                                      fontSize: 10),
                                ),
                              ),
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
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (builder) => const AddDriverScreen()));
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
