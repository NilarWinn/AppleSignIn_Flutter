import 'package:flutter/material.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class AppleSignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SignInWithAppleButton(
      onPressed: () async {
        try {
          final result = await SignInWithApple.getAppleIDCredential(
            scopes: [
              AppleIDAuthorizationScopes.email,
              AppleIDAuthorizationScopes.fullName,
            ],
          );

          print(result);
          print(result.identityToken);
          // You can use the result to authenticate the user with your server.
        } catch (error) {
          print(error.toString());
        }
      },
    );
  }
}
