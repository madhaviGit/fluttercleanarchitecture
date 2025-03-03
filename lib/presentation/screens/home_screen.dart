import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../di/service_locator.dart';
import '../../services/google_auth_service.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final GoogleAuthService _googleAuthService = getIt<GoogleAuthService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Sign-In'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
            color: Colors.blueAccent,
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
    );
  }
}
