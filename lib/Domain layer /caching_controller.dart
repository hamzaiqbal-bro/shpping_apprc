import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping_app/Domain%20layer%20/product_dto.dart';

Future<void> cacheProducts(List<Product> products) async {
  final prefs = await SharedPreferences.getInstance();
  final String productsJson = jsonEncode(products.map((e) => e.toJson()).toList());
  prefs.setString('cached_products', productsJson);
}

Future<List<Product>> getCachedProducts() async {
  final prefs = await SharedPreferences.getInstance();
  final String? productsJson = prefs.getString('cached_products');
  if (productsJson != null) {
    List<dynamic> body = jsonDecode(productsJson);
    return body.map((dynamic item) => Product.fromJson(item)).toList();
  } else {
    return [];
  }
}
