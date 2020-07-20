import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//internal imports
import 'package:do_locs/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  // ignore: non_constant_identifier_names
  var product_list = [
    {
      //creating a map
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 4000,
      "price": 3500,
    },
    {
      "name": "Blazer 2",
      "picture": "images/products/blazer2.jpeg",
      "old_price": 4500,
      "price": 4000,
    },
    {
      "name": "Red dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 1000,
      "price": 500,
    },
    {
      "name": "Black Dress",
      "picture": "images/products/dress2.jpeg",
      "old_price": 1000,
      "price": 850,
    },
    {
      "name": "Heels",
      "picture": "images/products/hills1.jpeg",
      "old_price": 12000,
      "price": 9000,
    },
    {
      "name": "Red Heels",
      "picture": "images/products/hills2.jpeg",
      "old_price": 12000,
      "price": 8500,
    },
    {
      "name": "Black pants",
      "picture": "images/products/pants1.jpg",
      "old_price": 1200,
      "price": 850,
    },
    {
      "name": "Sweat Pants",
      "picture": "images/products/pants2.jpeg",
      "old_price": 1000,
      "price": 850,
    },
    {
      "name": "Shoe",
      "picture": "images/products/shoe1.jpg",
      "old_price": 12000,
      "price": 8500,
    },
    {
      "name": "Blue Skirt",
      "picture": "images/products/skt1.jpeg",
      "old_price": 12000,
      "price": 8500,
    },
    {
      "name": "Pink Skirt",
      "picture": "images/products/skt2.jpeg",
      "old_price": 12000,
      "price": 8500,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  //variable
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  //constructor
  Single_prod({
    // ignore: non_constant_identifier_names
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new ProductDetails(
                      //PASSING THE VALUES OF PROD DETAILS
                      product_detail_name: prod_name,
                      product_detail_new_price: prod_price,
                      product_detail_old_price: prod_old_price,
                      product_detail_picture: prod_picture,
                    ))),
            child: GridTile(
              footer: Container(
                color: Colors.white70, //white70 has opacity
                child: new Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      prod_name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    )),
                    new Text(
                      "Ksh $prod_price",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    )
                  ],
                ), //the \ doesn't validate the first $
              ),
              child: Image.asset(
                prod_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
/*ListTile(
leading: Text(
prod_name,
style: TextStyle(fontWeight: FontWeight.bold),
),
title: Text("Ksh $prod_price",
style: TextStyle(
color: Colors.red,
fontWeight: FontWeight.w800,
)),
subtitle: Text(
"Ksh $prod_old_price",
style: TextStyle(
color: Colors.black,
fontWeight: FontWeight.w800,
decoration: TextDecoration.lineThrough),
),
),
 */
