import 'package:flutter/material.dart';
import 'package:responsive/assignment/data/data_source.dart';
import 'package:responsive/assignment/ui/widgets/productWidget.dart';

class FavouritePage extends StatelessWidget {
  Function function;
  FavouritePage(this.function);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: products.where((element) => element.isFavourite).length,
        itemBuilder: (context, index) {
          return ProductWidget(
              products.where((element) => element.isFavourite).toList()[index],
              function);
        });
  }
}
