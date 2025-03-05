import 'package:flutter/material.dart';
import 'di/service_locator.dart';
import 'presentation/screens/login_screen.dart';

void commonMain() {
  setupLocator();
  runApp(LoginScreen());
}
