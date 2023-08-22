

import 'package:flutter/material.dart';
import 'package:project_providerssss/ProviderController.dart';
import 'package:project_providerssss/Provider_ApiController.dart';
import 'package:project_providerssss/provider_ApiIntegration.dart';
import 'package:provider/provider.dart';

import 'ProviderExample.dart';
import 'menubar.dart';
import 'menubar_Example.dart';

void main() {
  runApp( MultiProvider(
   providers: [
     ChangeNotifierProvider(create: (context) => CounterController(),),
     ChangeNotifierProvider(create: (context) => ApiController(),),
   ],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Provider.of<CounterController>(context).bright,


      ),
      home: menubar()
    );
  }
}
