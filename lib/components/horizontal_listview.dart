import 'package:flutter/material.dart';

//stateless widget--the state will never change
class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          InkWell(
            onTap: () {},
            child: Category(
              image_location: 'images/cats/tshirt.png',
              image_caption: 'Artificial',
            ),),
          InkWell(
            onTap: () {},
            child: Category(
              image_location: 'images/cats/shoe.png',
              image_caption: 'Permanent',
            ),),
          InkWell(
            onTap: () {},
            child: Category(
              image_location: 'images/cats/jeans.png',
              image_caption: 'Semi Permanent',
            ),),
          InkWell(
            onTap: () {},
            child: Category(
              image_location: 'images/cats/informal.png',
              image_caption: 'Grafting',
            ),),
          InkWell(
            onTap: () {},
            child: Category(
              image_location: 'images/cats/formal.png',
              image_caption: 'Repairs',
            ),),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  //variables
  final String image_location;
  final String image_caption;

  //objects of the class
  Category({
    this.image_location,
    this.image_caption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 85.0,
          //height: 50.0,
          child: ListTile(
              title: Image.asset(
                image_location,
                //width: 80.0,
                height: 40.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  image_caption,
                  style: new TextStyle(fontSize: 10.0),
                ),
              )),
        ),
      ),
    );
  }
}
