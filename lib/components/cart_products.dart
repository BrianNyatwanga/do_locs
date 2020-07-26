import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
    {
      "name": "Blazer 2",
      "picture": "images/products/blazer2.jpeg",
      "price": 4000,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
    {
      "name": "Red dress",
      "picture": "images/products/dress1.jpeg",
      "price": 500,
      "size": "M",
      "color": "Blue",
      "quantity": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context, index) {
          return Single_cart_product(
            cart_prod_name: Products_on_the_cart[index]["name"],
            cart_prod_color: Products_on_the_cart[index]["color"],
            cart_prod_size: Products_on_the_cart[index]["size"],
            cart_prod_qty: Products_on_the_cart[index]["quantity"],
            cart_prod_price: Products_on_the_cart[index]["price"],
            cart_prod_picture: Products_on_the_cart[index]["picture"],
          );
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

//CONSTRUCTOR
  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_color,
    this.cart_prod_qty,
    this.cart_prod_size,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
//============LEADING SECTION===================================================
        leading: Image.asset(
          cart_prod_picture,
          width: 80.0,
          height: 80.0,
        ),
//============TITLE SECTION ====================================================
        title: Text(cart_prod_name),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
//=================SIZE OF PRODUCTS ============================================
                Padding(
                    padding: const EdgeInsets.all(2.0), child: Text("Size:")),
                Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      cart_prod_size,
                      style: TextStyle(color: Colors.red),
                    )),
//=================COLOR OF PRODUCTS ===========================================
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    20.0,
                    8.0,
                    8.0,
                    8.0,
                  ),
                  child: Text("Color:"),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      cart_prod_color,
                      style: TextStyle(color: Colors.red),
                    )),
              ],
            ),
//================ PRICE OF PRODUCTS ===========================================
            Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Ksh ${cart_prod_price}",
                style: TextStyle(
                  //fontSize: 17.0,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        trailing: FittedBox(
          fit: BoxFit.fill,
          child: Column(
            children: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.arrow_drop_up,
                    size: 50.0,
                  ),
                  onPressed: () {}),
              Text("$cart_prod_qty"),
              IconButton(
                  icon: Icon(
                    Icons.arrow_drop_down,
                    size: 50.0,
                  ),
                  onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
