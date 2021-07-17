import 'package:flutter/material.dart';

class Product {
  String name;
  String description;
  bool isFavourite;
  String image;
  Product({
    @required this.name,
    @required this.description,
    this.isFavourite = false,
    @required this.image,
  });
}
