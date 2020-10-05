import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              child: productList(context),
            ),
          ),
          Container(
            color: Colors.black12,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                    left: 20,
                  ),
                  child: Column(
                    children: [
                      Text('TOTAL'),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '\$4250',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  margin: EdgeInsets.only(right: 20),
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Checkout',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget productList(BuildContext context) {
  return Container(
    child: ListView(
      scrollDirection: Axis.vertical,
      children: [
        productItem(context),
        productItem(context),
        productItem(context),
        productItem(context),
        productItem(context),
        productItem(context),
        productItem(context),
      ],
    ),
  );
}

Widget productItem(BuildContext context) {
  return Container(
    height: 120,
    margin: EdgeInsets.all(5),
    child: Row(
      children: [
        Container(
          height: 100,
          width: 100,
          margin: EdgeInsets.all(10),
          child: Image.asset(
            'assets/product-1.png',
            fit: BoxFit.fitWidth,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 20,
            left: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Titulo do Produto'),
              Text(
                '\$200',
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: FlatButton(
                        onPressed: () {},
                        child: Text('+'),
                      ),
                    ),
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: FlatButton(
                        onPressed: () {},
                        child: Text('1'),
                      ),
                    ),
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: FlatButton(
                        onPressed: () {},
                        child: Text('-'),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
