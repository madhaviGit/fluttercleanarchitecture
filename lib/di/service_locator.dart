import 'package:get_it/get_it.dart';

import '../services/api_service.dart';
import '../services/auth_service.dart';
import '../services/google_auth_service.dart';

final GetIt getIt = GetIt.instance;

void setupLocator() {
  // Register services
  getIt.registerSingleton<ApiService>(ApiService());
  getIt.registerSingleton<AuthService>(AuthService());
  // Register GoogleAuthService as a lazy singleton
  getIt.registerLazySingleton(GoogleAuthService.new);
  getIt.registerSingleton<BottomNavigationService>(BottomNavigationService());
}

class BottomNavigationService {
  int currentIndex = 0;
}
