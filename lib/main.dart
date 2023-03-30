import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'presentation/splash/splash_screen.dart';
import 'utilities/bus_list_provider_state.dart';
import 'utilities/user_provider_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider()),
        ChangeNotifierProvider(create: (context) => BusListProviderState()),
      ],
      child: const MaterialApp(
          title: 'Noviindus Technologies', home: SplashScreen()),
    );
  }
}
