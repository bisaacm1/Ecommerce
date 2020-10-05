import 'package:flutter/material.dart';
import 'package:ecommerce/product/product-item.widget.dart';

class ProductList extends StatelessWidget {
  final Axis direction;
  ProductList({@required this.direction});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: direction,
        children: [
          ProductItem(
            title: 'Nike Dry-Fit Long Sleeve',
            description: 'Nike',
            price: 150,
            image: 'assets/product-10.png',
          ),
          ProductItem(
            title: 'BeoPlay Speaker',
            description: 'Bang and Olufsen',
            price: 755,
            image: 'assets/product-1.png',
          ),
          ProductItem(
            title: 'Leather Wristwatch',
            description: 'Tah hever',
            price: 450,
            image: 'assets/product-2.png',
          ),
          ProductItem(
            title: 'Smart Bluetooth Speaker',
            description: 'Smart Inc',
            price: 755,
            image: 'assets/product-3.png',
          ),
        ],
      ),
    );
  }
}
