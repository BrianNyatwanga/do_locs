import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';

// ignore: non_constant_identifier_names
class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//============  APP BAR ========================================================
      appBar: new AppBar(
        elevation: 0.1, //removes shadow
        backgroundColor: Colors.red,
        title: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => new Homepage()));
            },
            child: Text(
              'DoLocs',
            )),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  //leading & title leading goes to the far left
                  leading: new Text(
                    widget.product_detail_name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text(
                          "Ksh ${widget.product_detail_old_price}",
                          style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ),
                      Expanded(
                        child: new Text(
                          "Ksh ${widget.product_detail_new_price}",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
//============= The First Buttons ================
          Row(
            children: <Widget>[
//========================= SIZE BUTTON  =======================================
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text(
                              "Size",
                              style: TextStyle(color: Colors.black),
                            ),
                            content: new Text(
                              "Choose Size",
                              style: TextStyle(color: Colors.orangeAccent),
                            ),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text(
                                  'close',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text('Size')),
                      Expanded(child: new Icon(Icons.arrow_drop_down))
                    ],
                  ),
                ),
              ),
//========================== COLOR BUTTON ======================================
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text(
                              "Color",
                            ),
                            content: new Text(
                              "Choose a color",
                              style: TextStyle(color: Colors.orangeAccent),
                            ),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text(
                                  'close',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text('Color')),
                      Expanded(child: new Icon(Icons.arrow_drop_down))
                    ],
                  ),
                ),
              ),
//========================= QUANTITY BUTTON ====================================
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Quantity"),
                            content: new Text(
                              "Choose quantity",
                              style: TextStyle(color: Colors.orangeAccent),
                            ),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text(
                                  'close',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text('Qty')),
                      Expanded(child: new Icon(Icons.arrow_drop_down))
                    ],
                  ),
                ),
              ),
            ],
          ),
//========================THE BUY BUTTON =======================================
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Buy now"),
                ),
              ),
              new IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.red,
                  ),
                  onPressed: () {}),
              new IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  ),
                  onPressed: () {}),
            ],
          ),
//=================PRODUCT DETAILS ============================================
          Divider(),

          new ListTile(
            title: new Text("Product Details"),
            subtitle: new Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages"),
          ),
//==============PRODUCT NAME BRAND AND CONDITION===============================
          Divider(),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product Name:",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text(widget.product_detail_name),
              )
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product Brand:",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text("DoLocs"),
              )
            ],
          ),
//ToDo ADD PRODUCT CONDITION
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product Condition:",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text("NEW"),
              )
            ],
          ),
          new Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("Similar Products"),),

//============SIMILAR PRODUCTS SECTION====
          Container(
            height: 320.0,
            child: Similar_products(),
          ),
        ],
      ),
    );
  }
}

//=============================SIMILAR PRODUCTS CLASS=================================
class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
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
  ];

//====================== GRID VIEW =============================================
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similar_single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Similar_single_prod extends StatelessWidget {
  //variable
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  //constructor
  Similar_single_prod({
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
        tag: new Text('hero 2'),
        child: Material(
          child: InkWell(
            onTap: () =>
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) =>
                    new ProductDetails(
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
                ),
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
