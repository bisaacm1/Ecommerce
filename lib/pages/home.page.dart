import 'package:ecommerce/category/category-list.widget.dart';

import 'package:ecommerce/product/product-list.widget.dart';
import 'package:ecommerce/widgets/search-box.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 60,
              ),
              SearchBox(),
              SizedBox(
                height: 30,
              ),
              Text(
                'Categories',
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                child: CategoryList(),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Selling',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text('See All'),
                  )
                ],
              ),
              Container(
                height: 350,
                child: ProductList(
                  direction: Axis.horizontal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
