import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:globus_management/LoginPage/constants.dart';

class FaceSheetForm extends StatefulWidget {
  @override
  _FaceSheetFormState createState() => _FaceSheetFormState();
}

class _FaceSheetFormState extends State<FaceSheetForm> {
  bool _isSelected = false;
  bool _isSelected1 = false;
  bool _isSelected2 = false;
  bool _isSelected3 = false;
  bool _isSelected4 = false;
  bool _isSelected5 = false;
  bool _isSelected6 = false;
  bool _isSelected7 = false;
  bool _isSelected8 = false;
  bool _isSelected9 = false;
  bool _isSelected10 = false;

  TextEditingController controller = TextEditingController();
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  TextEditingController controller5 = TextEditingController();

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
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Name of Patient',
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        height: 40,
                        width: 650,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Age',
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        width: 610,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Sex',
                            suffixIcon: IconButton(
                              icon: Icon(Icons.arrow_drop_down_circle_rounded),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        height: 40,
                        width: 650,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'UHID',
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        height: 40,
                        width: 610,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'I.P.D.No',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Father/Husband Name',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Address',
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        height: 40,
                        width: 450,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Tel No.',
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        height: 40,
                        width: 450,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Occupation',
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        height: 40,
                        width: 340,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Nationality',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Ward/Room No.',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Bed No.',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Date of Addmission',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.calendar_today_rounded),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Doctors in Charge',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Date of Discharges',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.calendar_today_rounded),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Total Days',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Financial Arrangement',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      depth: 5,
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Payment Mode (Please check)',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        CheckboxListTile(
                          title: Text('TPA'),
                          value: _isSelected,
                          activeColor: kPrimaryColor,
                          onChanged: (bool newValue) {
                            setState(() {
                              _isSelected = newValue;
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: Text('Empaneled Credit Letter'),
                          activeColor: kPrimaryColor,
                          value: _isSelected1,
                          onChanged: (bool newValue) {
                            setState(() {
                              _isSelected1 = newValue;
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: Text('Employee / Dependent'),
                          activeColor: kPrimaryColor,
                          value: _isSelected2,
                          onChanged: (bool newValue) {
                            setState(() {
                              _isSelected2 = newValue;
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: Text('Self Paying (Cash)'),
                          activeColor: kPrimaryColor,
                          value: _isSelected3,
                          onChanged: (bool newValue) {
                            setState(() {
                              _isSelected3 = newValue;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Provisional Diagonosis',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Final Diagonosis',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Operative Special Procedures',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      depth: 5,
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Operative Special Procedure',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        CheckboxListTile(
                          title: Text('Result'),
                          value: _isSelected4,
                          activeColor: kPrimaryColor,
                          onChanged: (bool newValue) {
                            setState(() {
                              _isSelected4 = newValue;
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: Text('Discharge'),
                          activeColor: kPrimaryColor,
                          value: _isSelected5,
                          onChanged: (bool newValue) {
                            setState(() {
                              _isSelected5 = newValue;
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: Text('Reffered'),
                          value: _isSelected6,
                          activeColor: kPrimaryColor,
                          onChanged: (bool newValue) {
                            setState(() {
                              _isSelected6 = newValue;
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: Text('L.A.M.A.'),
                          value: _isSelected7,
                          activeColor: kPrimaryColor,
                          onChanged: (bool newValue) {
                            setState(() {
                              _isSelected7 = newValue;
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: Text('Investigation Only'),
                          value: _isSelected8,
                          activeColor: kPrimaryColor,
                          onChanged: (bool newValue) {
                            setState(() {
                              _isSelected8 = newValue;
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: Text('D.O.'),
                          value: _isSelected9,
                          activeColor: kPrimaryColor,
                          onChanged: (bool newValue) {
                            setState(() {
                              _isSelected9 = newValue;
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: Text('Expired'),
                          value: _isSelected10,
                          activeColor: kPrimaryColor,
                          onChanged: (bool newValue) {
                            setState(() {
                              _isSelected10 = newValue;
                            });
                          },
                        ),
                      ],
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
