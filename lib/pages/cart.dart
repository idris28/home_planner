import 'package:flutter/material.dart';
import 'package:home_design/pages/home.dart';
import 'package:home_design/components/cart_products.dart';
class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.purple,
        title: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => new HomePage()));
            },
            child: new Align(alignment: Alignment.center,child: Text('Cart',))),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: new Cart_Products(),
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(child: ListTile(
              title: new Text("Total:"),
              subtitle: new Text("\R\s.230"),
            ),),
            Expanded(
              child: new MaterialButton(onPressed: (){},
                child: new Text("Check out", style: TextStyle(color: Colors.white),),
                color: Colors.purple,),
            )
          ],
        ),
      ),
    );
  }
}
