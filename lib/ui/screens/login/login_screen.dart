import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/custom_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomButton(
              text: "Home",
              onTap: () {
                context.go('/home');
              },
            ),
          ],
        ),
      ),
    );
  }
}
