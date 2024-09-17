// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:flutter_mongo_lab1/varibles.dart';
// import 'package:flutter_mongo_lab1/models/product_model.dart';
// import 'package:http/http.dart' as http;
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// class ProductController {
//   final storage =
//       const FlutterSecureStorage(); // ตัวจัดการสำหรับเก็บข้อมูลอย่างปลอดภัย // ตัวจัดการสำหรับเก็บข้อมูลอย่างปลอดภัย

//   Future<List<ProductModel>> getProducts() async {
//     // ดึง accessToken จาก storage
//     String? accessToken = await storage.read(key: 'accessToken');

//     final response = await http.get(
//       Uri.parse('$apiURL/api/products'),
//       headers: {
//         "Content-Type": "application/json",
//         "Authorization": "Bearer $accessToken", // ใส่ accessToken ใน header
//       },
//     );

//     if (response.statusCode == 200) {
//       // Decode the response and map it to ProductModel objects
//       List<dynamic> jsonResponse = json.decode(response.body);
//       return jsonResponse
//           .map((product) => ProductModel.fromJson(product))
//           .toList();
//     } else {
//       // If the request failed, throw an error
//       throw Exception('Failed to load products');
//     }
//   }
// }
