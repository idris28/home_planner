import 'package:flutter/material.dart';
import 'package:home_design/pages/home.dart';
import 'package:home_design/pages/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}
final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn _googleSignIn = GoogleSignIn();
class _AccountState extends State<Account> {


  void signOut(){
    _auth.signOut();
    _googleSignIn.signOut();
  }
  static Future<void> _signOut() async {
    await _auth.signOut();
    await _googleSignIn.signOut();
  }
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
            child: new Align(
                alignment: Alignment.center,
                child: Text(
                  'Account',
                ))),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {
                _signOut;
              }),
        ],
      ),
      body: new Column(
        children: <Widget>[
          new Padding(
            padding: const EdgeInsets.fromLTRB(120.0, 8.0, 100.0, 100.0),
            child: new UserAccountsDrawerHeader(
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
              decoration: new BoxDecoration(color: Colors.white30),
            ),
          ),
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.green,
                elevation: 0.0,
                child: MaterialButton(
                  onPressed: () {
                    signOut();
                  },
                  minWidth: MediaQuery.of(context).size.width,
                  child: Text(
                    "LogOut",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
