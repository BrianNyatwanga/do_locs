import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:carousel_pro/carousel_pro.dart';
// OWN IMPORTS
import 'package:do_locs/components/horizontal_listview.dart';
import 'package:do_locs/components/products.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homepage(),
  ));
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
  Widget image_carousel = new Container(
    height: 150.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastLinearToSlowEaseIn,
        //animationDuration: Duration(milliseconds: 2000),
        dotSize: 4.0,
        //dotColor: ,
        indicatorBgPadding: 4.0,
      ),
  );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,//removes shadow
        backgroundColor: Colors.red,
        title: Text('DoLocs'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //header drawer
            new UserAccountsDrawerHeader(
                accountName: Text('Brian Nyatwanga'),
                accountEmail: Text('briannyatwanga@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color: Colors.white),
              ),
            ),
              decoration: new BoxDecoration(
                color: Colors.red,
              ),
            ),
            // body
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite),
              ),
            ),
            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings,  color: Colors.blue,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.greenAccent,),
              ),
            ),
          ],
        ),
      ),
      //======================BODY========================================
      body: new ListView(
        children: <Widget>[
//=======================IMAGE CAROUSEL==============================
          image_carousel,

//=======================HORIZONTAL LIST VIEW =======================
          new Padding(padding: const EdgeInsets.all(8.0),
            child: new Text('Categories'),),
          HorizontalList(),

//======================PRODUCTS=====================================
          new Padding(padding: const EdgeInsets.all(8.0),
            child: new Text('Products'),),

//=============Grid view
          Container(
            height: 300.0,
            child: Products(),
          ),
          //MAKE PADDING AT BOTTOM OF GRID
          //new Padding(padding: const EdgeInsets.all(8.0)),
        ]
      ),
    );
  }
}
