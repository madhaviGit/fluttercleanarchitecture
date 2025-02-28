import 'package:flutter/material.dart';

import 'flavor_config.dart';

void commonMain() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
          child: Text("Environment name: ${AppEnvironment.environmentName}")),
    );
  }
}
