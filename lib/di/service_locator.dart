import '../services/api_service.dart';
import '../services/auth_service.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void setupLocator() {
  // Register services
  getIt.registerSingleton<ApiService>(ApiService());
  getIt.registerSingleton<AuthService>(AuthService());
}
