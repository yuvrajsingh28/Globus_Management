import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class IntialAssessmentTest extends StatefulWidget {
  @override
  _IntialAssessmentTestState createState() => _IntialAssessmentTestState();
}

class _IntialAssessmentTestState extends State<IntialAssessmentTest> {
  double _lowerValue = 0;
  double _upperValue = 10;
  int handlerIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15, bottom: 15, left: 200, right: 200),
      child: Container(
        height: 800,
        width: 1300,
        child: Neumorphic(
          style: NeumorphicStyle(
            color: Colors.white,
            boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.circular(5),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(25),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Presenting Complaints',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(25),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'History of Present Illness',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(25),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Past History',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(25),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Family History',
                    ),
                  ),
                ),
                Container(
                  width: 1000,
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      color: Colors.white,
                      boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(5),
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'PAIN SCORE',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: FlutterSlider(
                            values: [handlerIndex.toDouble()],
                            max: 10,
                            min: 0,
                            onDragging: (handlerIndex, lowerValue, upperValue) {
                              this.handlerIndex = handlerIndex;
                              _lowerValue = lowerValue;
                              _upperValue = upperValue;
                              setState(() {});
                            },
                            selectByTap: true,
                            jump: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(25),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Clinical Findings',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(25),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Restraints',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
