import 'package:flutter/cupertino.dart';

import 'comman_main.dart';
import 'flavor_config.dart';

void main() {
  // runApp(const App(flavor:'Development'));
  WidgetsFlutterBinding.ensureInitialized();
  AppEnvironment.setUpEnv(Environmemt.dev);
  commonMain();
}
