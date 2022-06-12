import 'package:carlosmusic/generosmusica/cumbiaa/reprocumbia.dart';
import 'package:flutter/material.dart';
import 'package:carlosmusic/widgets/widgets_menu.dart';
import 'package:carlosmusic/principals.dart';

import 'listcumbia.dart';

class cumbiaa extends StatefulWidget {
  const cumbiaa({Key? key}) : super(key: key);

  @override
  State<cumbiaa> createState() => _cumbiaa();
}

class _cumbiaa extends State<cumbiaa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Musica Cumbia"),
        ),
        drawer: MenuLateral(),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: cumbiass
                    .asMap()
                    .map((index, cumbia) =>
                        MapEntry(index, itemaudi(context, cumbia, index + 1)))
                    .values
                    .toList(),
              ),
            ),
          ],
        ));
  }
}

Widget itemaudi(BuildContext context, cumbia cumbiass, int index) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ReprocumbiaPage(
                    cumbiass: [cumbiass],
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
          child: Image.asset(cumbiass.image),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(cumbiass.titul),
          ],
        ),
      ]),
    ),
  );
}
