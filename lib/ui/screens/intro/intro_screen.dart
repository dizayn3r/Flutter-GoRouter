import 'package:flutter/material.dart';
import 'package:flutter_go_router/ui/widgets/custom_buttons.dart';
import 'package:go_router/go_router.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Intro Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomButton(
              text: "Login",
              onTap: () {
                context.go('/login');
              },
            ),
            CustomButton(
              text: "Register",
              onTap: () {
                context.go('/register');
              },
            ),
          ],
        ),
      ),
    );
  }
}
