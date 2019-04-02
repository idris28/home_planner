import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'image/icon/frame.png',
            image_caption: 'Paintings',
          ),
          Category(
            image_location: 'image/icon/sofa.png',
            image_caption: 'Sofa',
          ),

          Category(
            image_location: 'image/icon/book_stand.png',
            image_caption: 'Book Stand',
          ),
          Category(
            image_location: 'image/icon/chair.png',
            image_caption: 'Chair',
          ),
          Category(
            image_location: 'image/icon/cupboard.png',
            image_caption: 'Cupboard',
          ),
          Category(
            image_location: 'image/icon/table.png',
            image_caption: 'Table',
          ),
          Category(
            image_location: 'image/icon/window.png',
            image_caption: 'Window',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 80.0,
          child: ListTile(
              title: Image.asset(
                image_location,
                width: 40.0,
                height: 60.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(image_caption, style: new TextStyle(fontSize: 11.0),),
              )
          ),
        ),
      ),
    );
  }
}
