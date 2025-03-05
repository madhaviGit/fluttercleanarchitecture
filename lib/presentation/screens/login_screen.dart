import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../di/service_locator.dart';
import '../../services/google_auth_service.dart';
import '../themes/app_colors.dart';
import '../themes/app_theme.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final GoogleAuthService _googleAuthService = getIt<GoogleAuthService>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.materialThemeData(context),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.iosBlue,
          toolbarHeight: 40,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.black,
            statusBarIconBrightness: Brightness.light,
            systemNavigationBarColor: Colors.blue,
            systemStatusBarContrastEnforced: true,
            statusBarBrightness: Brightness.dark,
            systemNavigationBarIconBrightness: Brightness.dark,
          ),
          title: const Text('Google Sign-In'),
          centerTitle: true,
          titleTextStyle: const TextStyle(
              color: AppColors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () async {
                    final GoogleSignInAccount? account =
                        await _googleAuthService.signInWithGoogle();
                    if (account != null) {
                      print("Signed in as: ${account.displayName}");
                      print("Email: ${account.email}");
                    } else {
                      print("Sign-in failed");
                    }
                  },
                  child: const Text("Google SignIn")),
              ElevatedButton(
                onPressed: () async {
                  await _googleAuthService.signOut();
                },
                child: const Text('Sign out'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
