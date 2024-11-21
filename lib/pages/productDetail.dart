import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ProductDetailPage extends StatelessWidget {
  final Map<String, dynamic> product;

  const ProductDetailPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        foregroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          product['title'],
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Display product image
            Center(
              child: product['image'].endsWith('.png')
                  ? Image.asset(
                      product['image'],
                      fit: BoxFit.cover,
                    )
                  : Lottie.asset(
                      product['image'],
                    ),
            ),
            const SizedBox(height: 16.0),
            Text(
              product['title'],
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              product['subtitle'],
              style: TextStyle(fontSize: 20.0, color: Colors.grey[600]),
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}
