import 'package:flutter/material.dart';
import 'package:home_design/components/products.dart';

class Cart_Products extends StatefulWidget {
  @override
  _Cart_ProductsState createState() => _Cart_ProductsState();
}

class _Cart_ProductsState extends State<Cart_Products> {
  var Products_on_the_cart = [
    {
      "name": "Wall Decals",
      "picture": "image/Products/walldecals1.jpeg",
      "price": 80,
      "size": "M",
      "color": "red",
      "quantity": 1,
    },
    {
      "name": "Clock",
      "picture": "image/Products/clock1.jpeg",
      "price": 280,
      "size": "M",
      "color": "purple",
      "quantity": 1,
    },
    {
      "name": "Painting",
      "picture": "image/Products/painting1.jpeg",
      "price": 440,
      "size": "M",
      "color": "blue",
      "quantity": 1,
    },
    {
      "name": "ShowPiece",
      "picture": "image/Products/showpiece1.jpeg",
      "price": 440,
      "size": "M",
      "color": "red",
      "quantity": 1,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context, index) {
          return Single_cart_product(
            cart_prod_name: Products_on_the_cart[index]["name"],
            cart_prod_color: Products_on_the_cart[index]["color"],
            cart_prod_qty: Products_on_the_cart[index]["quantity"],
            cart_prod_size: Products_on_the_cart[index]["size"],
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

  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_size,
    this.cart_prod_color,
    this.cart_prod_qty,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: new Image.asset(cart_prod_picture, width: 70.0,height: 100.0,),
        title: new Text(cart_prod_name, style: new TextStyle( fontSize: 18.0, fontWeight: FontWeight.bold ),),
        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 28.0),
                  child: new Text("Size:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: new Text(cart_prod_size, style: TextStyle(color: Colors.purple),),
                ),
                new Padding(padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: new Text("Color"),),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: new Text(cart_prod_color,style: TextStyle(color: Colors.purple),),
                ),
              ],
            ),

            new Container(
              height: 50.0,
              alignment: Alignment.topLeft,
              child: new Text("\R\s.${cart_prod_price}", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),),
            ),

          ],
        ),
        trailing: new Column(
          children: <Widget>[
            new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
            new Text("${cart_prod_qty}"),
            new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){})
          ],
        ),
      ),
    );
  }
}
