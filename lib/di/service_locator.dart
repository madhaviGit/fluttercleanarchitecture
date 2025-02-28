import 'package:get_it/get_it.dart';

import '../services/api_service.dart';
import '../services/auth_service.dart';

final GetIt getIt = GetIt.instance;

void setupLocator() {
  // Register services
  getIt.registerSingleton<ApiService>(ApiService());
  getIt.registerSingleton<AuthService>(AuthService());
}
