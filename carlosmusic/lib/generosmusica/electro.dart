import 'package:flutter/material.dart';
import 'package:carlosmusic/widgets/widgets_menu.dart';
import 'package:carlosmusic/principals.dart';

class electros extends StatefulWidget {
  const electros({Key? key}) : super(key: key);

  @override
  State<electros> createState() => _electrosState();
}

class _electrosState extends State<electros> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: MenuLateral(),
        body: Center(
          child: Text("holaa"),
        ));
  }
}
