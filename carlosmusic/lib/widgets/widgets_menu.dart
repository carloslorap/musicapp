import 'package:carlosmusic/generosmusica/cumbiaa/cumbia.dart';
import 'package:carlosmusic/generosmusica/rockk/rock.dart';
import 'package:flutter/material.dart';
import 'package:carlosmusic/generosmusica/electro.dart';
import 'package:carlosmusic/main.dart';
import 'package:carlosmusic/principals.dart';

class MenuLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 162, 205, 240),
                  Colors.white,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    "assets/usi.png",
                  ),
                ),
                const Text(
                  "Music Player",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Login"),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => homepage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("home"),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => principals()));
            },
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Musica Electro"),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => electros()));
            },
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Musica Rock"),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => rockk()));
            },
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Musica Salsa"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Musica Cumbia"),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => cumbiaa()));
            },
          )
        ],
      ),
    );
  }
}
