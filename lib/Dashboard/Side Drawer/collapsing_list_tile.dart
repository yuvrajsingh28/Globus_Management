import 'package:flutter/material.dart';

class CollapsingListTile extends StatefulWidget {
  final String title;
  final IconData icon;

  CollapsingListTile({@required this.title, @required this.icon});

  @override
  _CollapsingListTileState createState() => _CollapsingListTileState();
}

class _CollapsingListTileState extends State<CollapsingListTile> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          widget.icon,
          color: Colors.white30,
          size: 38,
        ),
        SizedBox(width: 10),
        Text(widget.title),
      ],
    );
  }
}
