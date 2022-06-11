import 'package:carlosmusic/generosmusica/listelectro.dart';
import 'package:flutter/material.dart';
import 'package:carlosmusic/widgets/widgets_menu.dart';
import 'package:carlosmusic/principals.dart';
import 'package:carlosmusic/generosmusica/listelectro.dart';

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
        body: Expanded(
          child: ListView(children: electros.asMap().map()),
        ));
  }
}

Widget itemaudio(BuildContext context, electro electros, int index) {
  return InkWell(
    onTap: () {},
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      color: Colors.transparent,
      height: 90,
      child: Row(children: <Widget>[
        Text(index.toString(), style: TextStyle(color: Colors.grey)),
        SizedBox(
          width: 20,
        ),
        Container(
          height: 70,
          width: 100,
          child: Image.asset(electros.imagen),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(electros.titulo),
          ],
        ),
      ]),
    ),
  );
}
