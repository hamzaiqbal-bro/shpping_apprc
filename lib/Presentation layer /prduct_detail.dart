import 'package:flutter/material.dart';
import 'package:shopping_app/Domain%20layer%20/product_dto.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  ProductDetailPage({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(product.imageUrl),
            SizedBox(height: 16.0),
            Text(
              product.title,
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              product.price,
              style: TextStyle(fontSize: 20.0, color: Colors.green),
            ),
            SizedBox(height: 16.0),
            Text(product.description),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Add to cart logic
              },
              child: Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
