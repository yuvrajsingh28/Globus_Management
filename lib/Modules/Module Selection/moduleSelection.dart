import 'package:flutter/material.dart';

class ModuleSelecion extends StatefulWidget {
  @override
  _ModuleSelecionState createState() => _ModuleSelecionState();
}

class _ModuleSelecionState extends State<ModuleSelecion> {
  final List<String> _listitemimage = [
    'assets/form.png',
    'assets/form.png',
    'assets/form.png',
    'assets/form.png',
    'assets/form.png',
    'assets/form.png',
    'assets/form.png',
    'assets/form.png',
    'assets/form.png',
    'assets/form.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Expanded(
          child: GridView.count(
            crossAxisCount: 4,
            padding: EdgeInsets.all(20),
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            children: _listitemimage
                .map(
                  (item) => Card(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(item),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
