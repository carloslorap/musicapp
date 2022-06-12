import 'package:carlosmusic/generosmusica/rockk/listrock.dart';
import 'package:carlosmusic/generosmusica/rockk/reprorock.dart';
import 'package:flutter/material.dart';
import 'package:carlosmusic/widgets/widgets_menu.dart';
import 'package:carlosmusic/principals.dart';

class rockk extends StatefulWidget {
  const rockk({Key? key}) : super(key: key);

  @override
  State<rockk> createState() => _rockk();
}

class _rockk extends State<rockk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: MenuLateral(),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: rockss
                    .asMap()
                    .map((index, rock) =>
                        MapEntry(index, itemaudi(context, rock, index + 1)))
                    .values
                    .toList(),
              ),
            ),
          ],
        ));
  }
}

Widget itemaudi(BuildContext context, rock rockss, int index) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ReprorockPage(
                    rockss: [rockss],
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
          child: Image.asset(rockss.image),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(rockss.titul),
          ],
        ),
      ]),
    ),
  );
}
