import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final double price;

  ProductPage({
    @required this.image,
    @required this.title,
    @required this.description,
    @required this.price,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.white.withOpacity(0),
              expandedHeight: 400,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Hero(
                  tag: image,
                  child: Image.asset(
                    image,
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              elevation: 0,
            ),
          ];
        },
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 10,
                right: 10,
                left: 10,
              ),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text('Nike'),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                description,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Nike Dry-Fit is a polyesteer fabric designed to help you keep dry so you con more cofortably work harder, longer.',
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                '\$ $price',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
