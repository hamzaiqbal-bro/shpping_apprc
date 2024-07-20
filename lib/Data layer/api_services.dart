import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shopping_app/Domain%20layer%20/product_dto.dart';

import '../Domain layer /category_dto.dart';



class ApiService {
  static const String baseUrl = 'https://api.escuelajs.co/api/v1';

  Future<List<Product>> fetchProducts() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/products'));
      if (response.statusCode == 200) {
        List<dynamic> body = json.decode(response.body) ?? [];
        return body.map((dynamic item) => Product.fromJson(item)).toList();
      } else {
        throw Exception('Failed to load products. Status code: ${response.statusCode}');
      }
    } catch (e) {
      // Handle network errors specifically
      if (e is http.ClientException) {
        throw Exception('Failed to load products. Network error: $e');
      }
      throw Exception('Failed to load products. Error: $e');
    }
  }

  Future<List<Category>> fetchCategories() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/categories'));
      if (response.statusCode == 200) {
        List<dynamic> body = json.decode(response.body) ?? [];
        return body.map((dynamic item) => Category.fromJson(item)).toList();
      } else {
        throw Exception('Failed to load categories. Status code: ${response.statusCode}');
      }
    } catch (e) {
      // Handle network errors specifically
      if (e is http.ClientException) {
        throw Exception('Failed to load categories. Network error: $e');
      }
      throw Exception('Failed to load categories. Error: $e');
    }
  }
}


