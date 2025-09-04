import 'package:flutter/material.dart';

class CategoryModel {
  final int id;
  final String title;
  final String image;
  final Color color;

  CategoryModel({
    required this.id,
    required this.title,
    required this.image,
    required this.color,
  });
}

// Data
List<CategoryModel> categories = [
  CategoryModel(
    id: 1,
    title: "Fresh Fruits & Vegetables",
    image: "assets/images/1.png",
    color: const Color(0xFFDFFFE0),
  ),
  CategoryModel(
    id: 2,
    title: "Cooking Oil & Ghee",
    image: "assets/images/2.png",
    color: const Color(0xFFFFF3E0),
  ),
  CategoryModel(
    id: 3,
    title: "Meat & Fish",
    image: "assets/images/3.png",
    color: const Color(0xFFFFEBEE),
  ),
  CategoryModel(
    id: 4,
    title: "Bakery & Snacks",
    image: "assets/images/4.png",
    color: const Color(0xFFF3E5F5),
  ),
  CategoryModel(
    id: 5,
    title: "Dairy & Eggs",
    image: "assets/images/5.png",
    color: const Color(0xFFFFF9C4),
  ),
  CategoryModel(
    id: 6,
    title: "Beverages",
    image: "assets/images/6.png",
    color: const Color(0xFFE1F5FE),
  ),
];
