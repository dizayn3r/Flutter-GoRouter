import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/custom_buttons.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Category Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomButton(
              text: "Products",
              onTap: () {
                context.pushReplacement('/home/products/categories');
              },
            ),
          ],
        ),
      ),
    );
  }
}
