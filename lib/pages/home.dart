import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:home_design/pages/cart.dart';
import 'package:home_design/components/horizontal_listview.dart';
import 'package:home_design/components/products.dart';
import 'package:home_design/pages/login.dart';
import 'package:home_design/pages/account.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('image/img1.jpg'),
          AssetImage('image/img2.jpg'),
          AssetImage('image/img3.jpg'),
          AssetImage('image/img4.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.purple,
        title: Text('Home Planner'),
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
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));
              })
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //header
            new UserAccountsDrawerHeader(
              accountName: Text(''),
              accountEmail: Text(''),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.purple),
            ),
            //body

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(
                  Icons.home,
                  color: Colors.purple,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> new Account()));
              },
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(
                  Icons.person,
                  color: Colors.purple,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Order'),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.purple,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));
              },
              child: ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.purple,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.purple,
                ),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.help,
                  color: Colors.green,
                ),
              ),
            )
          ],
        ),
      ),
      body: new Column(
        children: <Widget>[
          //image carousel begins here
          image_carousel,
          //padding widget
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text(
              'Categories',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
          ),

          //Horizontal list view begins here
          HorizontalList(),

          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text('Recent Products',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
          ),
          //gridview
          Flexible(child: Products()),
        ],
      ),
    );
  }
}
