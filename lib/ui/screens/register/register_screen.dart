import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/custom_buttons.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomButton(
              text: "Login",
              onTap: () {
                context.go('/login');
              },
            ),
          ],
        ),
      ),
    );
  }
}
