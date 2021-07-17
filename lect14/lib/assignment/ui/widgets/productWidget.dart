import 'package:flutter/material.dart';
import 'package:responsive/assignment/models/product.dart';

class ProductWidget extends StatelessWidget {
  Product product;
  Function function;
  ProductWidget(this.product, this.function);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(product.image)),
                borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.name),
                Text(product.description),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              function(product);
            },
            icon: Icon(
              Icons.favorite,
              color: product.isFavourite ? Colors.red : Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
