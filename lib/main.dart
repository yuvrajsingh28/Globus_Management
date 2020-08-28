import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:toggle_bar/toggle_bar.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<FormState> formKey1 = GlobalKey<FormState>();
  GlobalKey<FormState> formKey2 = GlobalKey<FormState>();
  GlobalKey<FormState> formKey3 = GlobalKey<FormState>();
  GlobalKey<FormState> formKey4 = GlobalKey<FormState>();
  GlobalKey<FormState> formKey5 = GlobalKey<FormState>();
  GlobalKey<FormState> formKey6 = GlobalKey<FormState>();
  GlobalKey<FormState> formKey7 = GlobalKey<FormState>();
  GlobalKey<FormState> formKey8 = GlobalKey<FormState>();
  GlobalKey<FormState> formKey9 = GlobalKey<FormState>();
  GlobalKey<FormState> formKey10 = GlobalKey<FormState>();
  GlobalKey<FormState> formKey12 = GlobalKey<FormState>();
  GlobalKey<FormState> formKey13 = GlobalKey<FormState>();
  GlobalKey<FormState> formKey14 = GlobalKey<FormState>();
  GlobalKey<FormState> formKey15 = GlobalKey<FormState>();
  GlobalKey<FormState> formKey16 = GlobalKey<FormState>();
  GlobalKey<FormState> formKey17 = GlobalKey<FormState>();
  GlobalKey<FormState> formKey18 = GlobalKey<FormState>();
  GlobalKey<FormState> formKey19 = GlobalKey<FormState>();
  GlobalKey<FormState> formKey20 = GlobalKey<FormState>();
  GlobalKey<FormState> formKey21 = GlobalKey<FormState>();
  GlobalKey<FormState> formKey22 = GlobalKey<FormState>();
  TextEditingController controller = TextEditingController();
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  TextEditingController controller5 = TextEditingController();
  TextEditingController controller6 = TextEditingController();
  TextEditingController controller7 = TextEditingController();
  TextEditingController controller8 = TextEditingController();
  TextEditingController controller9 = TextEditingController();
  TextEditingController controller10 = TextEditingController();
  TextEditingController controller11 = TextEditingController();
  TextEditingController controller12 = TextEditingController();
  TextEditingController controller13 = TextEditingController();
  TextEditingController controller14 = TextEditingController();
  TextEditingController controller15 = TextEditingController();
  TextEditingController controller16 = TextEditingController();
  TextEditingController controller17 = TextEditingController();
  TextEditingController controller18 = TextEditingController();
  TextEditingController controller19 = TextEditingController();
  TextEditingController controller20 = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller12.text =
        DateFormat('dd-MM-yyyy').format(DateTime.now()).toString();
  }

  List<String> labels = [
    "Basic Information",
    "Disease",
    "Treatment",
    "Medications",
  ];
  Color selectedTabColor = Color.fromRGBO(250, 70, 106, 1);
  Color textColor = Color.fromRGBO(250, 70, 106, 1);
  int currentIndex = 0;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 246, 249, 1),
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Patient Details',
          style: TextStyle(
              color: Color.fromRGBO(250, 70, 106, 1),
              fontSize: 20,
              fontWeight: FontWeight.w400,
              fontFamily: 'Ubuntu'),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ToggleBar(
              labels: labels,
              backgroundColor: Colors.white,
              selectedTabColor: selectedTabColor,
              textColor: textColor,
              onSelectionUpdated: (index) =>
                  setState(() => currentIndex = index),
            ),
            SizedBox(
              height: 50,
            ),
            SingleChildScrollView(
              child: Center(
                child: Container(
                  height: 700,
                  width: 1200,
                  child: Card(
                    color: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 2),
                          child: Center(
                            child: Text(
                              'FACE SHEET',
                              style: TextStyle(
                                  color: Color.fromRGBO(250, 70, 106, 1),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Ubuntu'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 2, 10, 20),
                          child: Center(
                            child: Text(
                              'ADMISSION / DISCHARGE RECORD',
                              style: TextStyle(
                                  color: Color.fromRGBO(250, 70, 106, 1),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Ubuntu'),
                            ),
                          ),
                        ),
                        Divider(
                          height: 20,
                          thickness: 3.5,
                          color: Color.fromRGBO(250, 70, 106, 1),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 300, 10),
                          child: Container(
                            width: 200,
                            height: 40,
                            child: Neumorphic(
                              style: NeumorphicStyle(
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(5)),
                                depth: -3,
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.only(
                                left: 20,
                                right: 20,
                              ),
                              child: Form(
                                key: formKey,
                                child: TextFormField(
                                  controller: controller,
                                  autofocus: false,
                                  decoration: InputDecoration(
                                    hintText: 'Name of the Patient',
                                    border: InputBorder.none,
                                    errorStyle: TextStyle(
                                      color: Colors.red,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Ubuntu',
                                    ),
                                    labelStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Ubuntu',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Container(
                                width: 200,
                                height: 40,
                                child: Neumorphic(
                                  style: NeumorphicStyle(
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(5)),
                                    depth: -3,
                                    color: Colors.white,
                                  ),
                                  padding: EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                  ),
                                  child: Form(
                                    key: formKey1,
                                    child: TextFormField(
                                      controller: controller1,
                                      autofocus: false,
                                      decoration: InputDecoration(
                                        hintText: 'Age',
                                        border: InputBorder.none,
                                        errorStyle: TextStyle(
                                          color: Colors.red,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Ubuntu',
                                        ),
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Ubuntu',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Container(
                                width: 200,
                                height: 40,
                                child: Neumorphic(
                                  style: NeumorphicStyle(
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(5)),
                                    depth: -3,
                                    color: Colors.white,
                                  ),
                                  padding: EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                  ),
                                  child: Form(
                                    key: formKey3,
                                    child: TextFormField(
                                      controller: controller2,
                                      autofocus: false,
                                      decoration: InputDecoration(
                                        hintText: 'Sex',
                                        border: InputBorder.none,
                                        errorStyle: TextStyle(
                                          color: Colors.red,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Ubuntu',
                                        ),
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Ubuntu',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Container(
                                width: 500,
                                height: 40,
                                child: Neumorphic(
                                  style: NeumorphicStyle(
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(5)),
                                    depth: -3,
                                    color: Colors.white,
                                  ),
                                  padding: EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                  ),
                                  child: Form(
                                    key: formKey4,
                                    child: TextFormField(
                                      controller: controller3,
                                      autofocus: false,
                                      decoration: InputDecoration(
                                        hintText: 'UHID',
                                        border: InputBorder.none,
                                        errorStyle: TextStyle(
                                          color: Colors.red,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Ubuntu',
                                        ),
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Ubuntu',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Container(
                                width: 500,
                                height: 40,
                                child: Neumorphic(
                                  style: NeumorphicStyle(
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(5)),
                                    depth: -3,
                                    color: Colors.white,
                                  ),
                                  padding: EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                  ),
                                  child: Form(
                                    key: formKey5,
                                    child: TextFormField(
                                      controller: controller4,
                                      autofocus: false,
                                      decoration: InputDecoration(
                                        hintText: 'I.P.D. No.',
                                        border: InputBorder.none,
                                        errorStyle: TextStyle(
                                          color: Colors.red,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Ubuntu',
                                        ),
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Ubuntu',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 300, 10),
                          child: Container(
                            width: 200,
                            height: 40,
                            child: Neumorphic(
                              style: NeumorphicStyle(
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(5)),
                                depth: -3,
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.only(
                                left: 20,
                                right: 20,
                              ),
                              child: Form(
                                key: formKey6,
                                child: TextFormField(
                                  controller: controller5,
                                  autofocus: false,
                                  decoration: InputDecoration(
                                    hintText: 'Father/Husband Name',
                                    border: InputBorder.none,
                                    errorStyle: TextStyle(
                                      color: Colors.red,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Ubuntu',
                                    ),
                                    labelStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Ubuntu',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 300, 10),
                          child: Container(
                            width: 200,
                            height: 120,
                            child: Neumorphic(
                              style: NeumorphicStyle(
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(5)),
                                depth: -3,
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.only(
                                left: 20,
                                right: 20,
                              ),
                              child: Form(
                                key: formKey7,
                                child: TextFormField(
                                  controller: controller6,
                                  autofocus: false,
                                  decoration: InputDecoration(
                                    hintText: 'Address',
                                    border: InputBorder.none,
                                    errorStyle: TextStyle(
                                      color: Colors.red,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Ubuntu',
                                    ),
                                    labelStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Ubuntu',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Container(
                                width: 300,
                                height: 40,
                                child: Neumorphic(
                                  style: NeumorphicStyle(
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(5)),
                                    depth: -3,
                                    color: Colors.white,
                                  ),
                                  padding: EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                  ),
                                  child: Form(
                                    key: formKey8,
                                    child: TextFormField(
                                      controller: controller7,
                                      autofocus: false,
                                      decoration: InputDecoration(
                                        hintText: 'Contact No.',
                                        border: InputBorder.none,
                                        errorStyle: TextStyle(
                                          color: Colors.red,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Ubuntu',
                                        ),
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Ubuntu',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Container(
                                width: 200,
                                height: 40,
                                child: Neumorphic(
                                  style: NeumorphicStyle(
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(5)),
                                    depth: -3,
                                    color: Colors.white,
                                  ),
                                  padding: EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                  ),
                                  child: Form(
                                    key: formKey9,
                                    child: TextFormField(
                                      controller: controller8,
                                      autofocus: false,
                                      decoration: InputDecoration(
                                        hintText: 'Occupation',
                                        border: InputBorder.none,
                                        errorStyle: TextStyle(
                                          color: Colors.red,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Ubuntu',
                                        ),
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Ubuntu',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Container(
                                width: 200,
                                height: 40,
                                child: Neumorphic(
                                  style: NeumorphicStyle(
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(5)),
                                    depth: -3,
                                    color: Colors.white,
                                  ),
                                  padding: EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                  ),
                                  child: Form(
                                    key: formKey10,
                                    child: TextFormField(
                                      controller: controller9,
                                      autofocus: false,
                                      decoration: InputDecoration(
                                        hintText: 'Nationality',
                                        border: InputBorder.none,
                                        errorStyle: TextStyle(
                                          color: Colors.red,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Ubuntu',
                                        ),
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Ubuntu',
                                        ),
                                      ),
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
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Container(
                                width: 200,
                                height: 40,
                                child: Neumorphic(
                                  style: NeumorphicStyle(
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(5)),
                                    depth: -3,
                                    color: Colors.white,
                                  ),
                                  padding: EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                  ),
                                  child: Form(
                                    key: formKey12,
                                    child: TextFormField(
                                      controller: controller10,
                                      autofocus: false,
                                      decoration: InputDecoration(
                                        hintText: 'Ward/Room No.',
                                        border: InputBorder.none,
                                        errorStyle: TextStyle(
                                          color: Colors.red,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Ubuntu',
                                        ),
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Ubuntu',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Container(
                                width: 150,
                                height: 40,
                                child: Neumorphic(
                                  style: NeumorphicStyle(
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(5)),
                                    depth: -3,
                                    color: Colors.white,
                                  ),
                                  padding: EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                  ),
                                  child: Form(
                                    key: formKey13,
                                    child: TextFormField(
                                      controller: controller11,
                                      autofocus: false,
                                      decoration: InputDecoration(
                                        hintText: 'Bed No.',
                                        border: InputBorder.none,
                                        errorStyle: TextStyle(
                                          color: Colors.red,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Ubuntu',
                                        ),
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Ubuntu',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 800, 10),
                          child: Container(
                            width: 100,
                            height: 40,
                            child: Neumorphic(
                              style: NeumorphicStyle(
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(5)),
                                depth: -3,
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.only(
                                left: 20,
                                right: 20,
                              ),
                              child: Form(
                                key: formKey14,
                                child: TextFormField(
                                  controller: controller12,
                                  autofocus: false,
                                  decoration: InputDecoration(
                                    hintText: 'Date of Addmission',
                                    border: InputBorder.none,
                                    errorStyle: TextStyle(
                                      color: Colors.red,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Ubuntu',
                                    ),
                                    labelStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Ubuntu',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 300, 10),
                          child: Container(
                            width: 100,
                            height: 80,
                            child: Neumorphic(
                              style: NeumorphicStyle(
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(5)),
                                depth: -3,
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.only(
                                left: 20,
                                right: 20,
                              ),
                              child: Form(
                                key: formKey15,
                                child: TextFormField(
                                  controller: controller13,
                                  autofocus: false,
                                  decoration: InputDecoration(
                                    hintText: 'Doctors in Charge',
                                    border: InputBorder.none,
                                    errorStyle: TextStyle(
                                      color: Colors.red,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Ubuntu',
                                    ),
                                    labelStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Ubuntu',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Container(
                                width: 200,
                                height: 40,
                                child: Neumorphic(
                                  style: NeumorphicStyle(
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(5)),
                                    depth: -3,
                                    color: Colors.white,
                                  ),
                                  padding: EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                  ),
                                  child: Form(
                                    key: formKey16,
                                    child: TextFormField(
                                      controller: controller14,
                                      autofocus: false,
                                      decoration: InputDecoration(
                                        hintText: 'Date of Discharges',
                                        border: InputBorder.none,
                                        errorStyle: TextStyle(
                                          color: Colors.red,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Ubuntu',
                                        ),
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Ubuntu',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Container(
                                width: 200,
                                height: 40,
                                child: Neumorphic(
                                  style: NeumorphicStyle(
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(5)),
                                    depth: -3,
                                    color: Colors.white,
                                  ),
                                  padding: EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                  ),
                                  child: Form(
                                    key: formKey17,
                                    child: TextFormField(
                                      controller: controller15,
                                      autofocus: false,
                                      decoration: InputDecoration(
                                        hintText: 'Total Days',
                                        border: InputBorder.none,
                                        errorStyle: TextStyle(
                                          color: Colors.red,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Ubuntu',
                                        ),
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Ubuntu',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          height: 20,
                          thickness: 3.5,
                          color: Color.fromRGBO(250, 70, 106, 1),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            'Payment Mode (Please check)',
                            style: TextStyle(
                                color: Color.fromRGBO(250, 70, 106, 1),
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Ubuntu'),
                          ),
                        ),
                        Divider(
                          height: 20,
                          thickness: 3.5,
                          color: Color.fromRGBO(250, 70, 106, 1),
                        ),
                        CheckboxListTile(
                          title: const Text('TPA'),
                          value: _isSelected,
                          onChanged: (bool newValue) {
                            setState(() {
                              _isSelected = newValue;
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: const Text('Empaneled Credit Letter'),
                          value: _isSelected1,
                          onChanged: (bool newValue) {
                            setState(() {
                              _isSelected1 = newValue;
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: const Text('Employee / Dependent'),
                          value: _isSelected2,
                          onChanged: (bool newValue) {
                            setState(() {
                              _isSelected2 = newValue;
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: const Text('Self Paying (Cash)'),
                          value: _isSelected3,
                          onChanged: (bool newValue) {
                            setState(() {
                              _isSelected3 = newValue;
                            });
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 300, 10),
                          child: Container(
                            width: 200,
                            height: 120,
                            child: Neumorphic(
                              style: NeumorphicStyle(
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(5)),
                                depth: -3,
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.only(
                                left: 20,
                                right: 20,
                              ),
                              child: Form(
                                key: formKey18,
                                child: TextFormField(
                                  controller: controller16,
                                  autofocus: false,
                                  decoration: InputDecoration(
                                    hintText: 'Financial Arrangement',
                                    border: InputBorder.none,
                                    errorStyle: TextStyle(
                                      color: Colors.red,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Ubuntu',
                                    ),
                                    labelStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Ubuntu',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 300, 10),
                          child: Container(
                            width: 200,
                            height: 200,
                            child: Neumorphic(
                              style: NeumorphicStyle(
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(5)),
                                depth: -3,
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.only(
                                left: 20,
                                right: 20,
                              ),
                              child: Form(
                                key: formKey19,
                                child: TextFormField(
                                  controller: controller17,
                                  autofocus: false,
                                  decoration: InputDecoration(
                                    hintText: 'Provisional Diagonosis',
                                    border: InputBorder.none,
                                    errorStyle: TextStyle(
                                      color: Colors.red,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Ubuntu',
                                    ),
                                    labelStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Ubuntu',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 300, 10),
                          child: Container(
                            width: 200,
                            height: 200,
                            child: Neumorphic(
                              style: NeumorphicStyle(
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(5)),
                                depth: -3,
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.only(
                                left: 20,
                                right: 20,
                              ),
                              child: Form(
                                key: formKey20,
                                child: TextFormField(
                                  controller: controller18,
                                  autofocus: false,
                                  decoration: InputDecoration(
                                    hintText: 'Final Diagonsis',
                                    border: InputBorder.none,
                                    errorStyle: TextStyle(
                                      color: Colors.red,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Ubuntu',
                                    ),
                                    labelStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Ubuntu',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          height: 20,
                          thickness: 3.5,
                          color: Color.fromRGBO(250, 70, 106, 1),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            'Operative Special Procedure',
                            style: TextStyle(
                                color: Color.fromRGBO(250, 70, 106, 1),
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Ubuntu'),
                          ),
                        ),
                        Divider(
                          height: 20,
                          thickness: 3.5,
                          color: Color.fromRGBO(250, 70, 106, 1),
                        ),
                        CheckboxListTile(
                          title: const Text('Result'),
                          value: _isSelected4,
                          onChanged: (bool newValue) {
                            setState(() {
                              _isSelected4 = newValue;
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: const Text('Discharge'),
                          value: _isSelected5,
                          onChanged: (bool newValue) {
                            setState(() {
                              _isSelected5 = newValue;
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: const Text('Reffered'),
                          value: _isSelected6,
                          onChanged: (bool newValue) {
                            setState(() {
                              _isSelected6 = newValue;
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: const Text('L.A.M.A.'),
                          value: _isSelected7,
                          onChanged: (bool newValue) {
                            setState(() {
                              _isSelected7 = newValue;
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: const Text('Investigation Only'),
                          value: _isSelected8,
                          onChanged: (bool newValue) {
                            setState(() {
                              _isSelected8 = newValue;
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: const Text('D.O.'),
                          value: _isSelected9,
                          onChanged: (bool newValue) {
                            setState(() {
                              _isSelected9 = newValue;
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: const Text('Expired'),
                          value: _isSelected10,
                          onChanged: (bool newValue) {
                            setState(() {
                              _isSelected10 = newValue;
                            });
                          },
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Container(
                                width: 300,
                                height: 40,
                                child: Neumorphic(
                                  style: NeumorphicStyle(
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(5)),
                                    depth: -3,
                                    color: Colors.white,
                                  ),
                                  padding: EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                  ),
                                  child: Form(
                                    key: formKey21,
                                    child: TextFormField(
                                      controller: controller19,
                                      autofocus: false,
                                      decoration: InputDecoration(
                                        hintText: 'Patient / Attendant sign.',
                                        border: InputBorder.none,
                                        errorStyle: TextStyle(
                                          color: Colors.red,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Ubuntu',
                                        ),
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Ubuntu',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Container(
                                width: 300,
                                height: 40,
                                child: Neumorphic(
                                  style: NeumorphicStyle(
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(5)),
                                    depth: -3,
                                    color: Colors.white,
                                  ),
                                  padding: EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                  ),
                                  child: Form(
                                    key: formKey22,
                                    child: TextFormField(
                                      controller: controller20,
                                      autofocus: false,
                                      decoration: InputDecoration(
                                        hintText: 'Doctor signature',
                                        border: InputBorder.none,
                                        errorStyle: TextStyle(
                                          color: Colors.red,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Ubuntu',
                                        ),
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Ubuntu',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
