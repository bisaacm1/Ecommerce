import 'package:ecommerce/pages/login.page.dart';
import 'package:ecommerce/pages/cart.page.dart';
import 'package:ecommerce/pages/home.page.dart';
import 'package:flutter/material.dart';

class TabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: [
          HomePage(),
          CartPage(),
          LoginPage(),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(1, 2.0),
              blurRadius: 8,
              spreadRadius: 1,
            ),
          ],
        ),
        child: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.shopping_cart),
            ),
            Tab(
              icon: Icon(Icons.perm_identity),
            ),
          ],
          indicatorColor: Theme.of(context).primaryColor,
          labelColor: Theme.of(context).primaryColor,
          unselectedLabelColor: Theme.of(context).primaryColorLight,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorPadding: EdgeInsets.all(5),
        ),
      ),
    );
  }
}
