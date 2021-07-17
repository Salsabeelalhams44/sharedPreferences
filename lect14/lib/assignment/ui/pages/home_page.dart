import 'package:flutter/material.dart';
import 'package:responsive/assignment/data/data_source.dart';
import 'package:responsive/assignment/ui/widgets/productWidget.dart';

class HomePage extends StatelessWidget {
  Function function;
  HomePage(this.function);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductWidget(products[index], function);
        });
  }
}
