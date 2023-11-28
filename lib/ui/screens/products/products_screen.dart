import 'package:flutter/material.dart';
import 'package:flutter_go_router/routes/app_routes_name.dart';
import 'package:go_router/go_router.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product Screen')),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () => context.goNamed(
                RouteName.productDetails,
                pathParameters: {"id": "12"},
              ),
              child: const Text('Go to the Details screen'),
            ),
          ),
        ],
      ),
    );
  }
}
