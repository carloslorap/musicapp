import 'package:carlosmusic/generosmusica/listelectro.dart';
import 'package:flutter/material.dart';
import 'package:carlosmusic/widgets/widgets_menu.dart';
import 'package:carlosmusic/principals.dart';
import 'package:carlosmusic/generosmusica/reproelec.dart';

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
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: electross
                    .asMap()
                    .map((index, electro) =>
                        MapEntry(index, itemaudi(context, electro, index + 1)))
                    .values
                    .toList(),
              ),
            ),
          ],
        ));
  }
}

Widget itemaudi(BuildContext context, electro electross, int index) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ReproelecPage(
                    electross: [electross],
                    index: index - 1,
                  )));
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      color: Colors.transparent,
      height: 100,
      child: Row(children: <Widget>[
        Text(index.toString(), style: TextStyle(color: Colors.grey)),
        SizedBox(
          width: 20,
        ),
        Container(
          height: 90,
          width: 120,
          child: Image.asset(electross.image),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(electross.titul),
          ],
        ),
      ]),
    ),
  );
}
