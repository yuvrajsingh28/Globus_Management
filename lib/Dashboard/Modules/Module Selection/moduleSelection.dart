import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ModuleSelecion extends StatefulWidget {
  @override
  _ModuleSelecionState createState() => _ModuleSelecionState();
}

class _ModuleSelecionState extends State<ModuleSelecion> {
  @override
  Widget build(BuildContext context) {
    singleCard(iconcode, icontitle) {
      return Padding(
        padding: EdgeInsets.all(15),
        child: Neumorphic(
          child: InkWell(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                //Image
                Icon(
                  iconcode,
                  color: Colors.black,
                  size: 84,
                ),
                //title
                Text(
                  icontitle,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: GridView.count(
        crossAxisCount: 5,
        children: <Widget>[
          singleCard(Icons.edit_attributes_rounded, 'Registration'),
          singleCard(Icons.calendar_today_rounded, 'Comming Soon'),
          singleCard(Icons.calendar_today_rounded, 'Comming Soon'),
          singleCard(Icons.calendar_today_rounded, 'Comming Soon'),
          singleCard(Icons.calendar_today_rounded, 'Comming Soon'),
          singleCard(Icons.calendar_today_rounded, 'Comming Soon'),
          singleCard(Icons.calendar_today_rounded, 'Comming Soon'),
          singleCard(Icons.calendar_today_rounded, 'Comming Soon'),
          singleCard(Icons.calendar_today_rounded, 'Comming Soon'),
          singleCard(Icons.calendar_today_rounded, 'Comming Soon'),
          singleCard(Icons.calendar_today_rounded, 'Comming Soon'),
          singleCard(Icons.calendar_today_rounded, 'Comming Soon'),
          singleCard(Icons.calendar_today_rounded, 'Comming Soon'),
        ],
      ),
    );
  }
}
