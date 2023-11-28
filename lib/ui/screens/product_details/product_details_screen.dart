import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductDetailsScreen extends StatelessWidget {
  final String id;
  final String path;
  const ProductDetailsScreen({super.key, required this.id, required this.path});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              path,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              id,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () => context.go('/home'),
              child: const Text('Go back to the Home screen'),
            ),
          ],
        ),
      ),
    );
  }
}
