import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:globus_management/AppState/appState.dart';
import 'package:globus_management/Dashboard/Side%20Drawer/collapsing_navigation_drawer.dart';
import 'package:globus_management/LoginPage/constants.dart';
import 'package:globus_management/Pages/resgistration.dart';
import 'package:globus_management/models/patient.dart';
import 'package:globus_management/Controllers/docController.dart';

class Patients extends StatefulWidget {
  AppState appState;
  Patients({@required this.appState});
  @override
  _PatientsState createState() => _PatientsState();
}

class _PatientsState extends State<Patients> {
  List<Patient> patients;
  bool loading = false;
  DocController patientController = DocController();

  @override
  void initState() {
    super.initState();
    patients = widget.appState.patients;
  }

  final List<String> patientName = [
    'Birju Pandey',
    'Ashish Singhal',
    'Ayush Singh',
    'Anjani Gutpta',
    'Harsh Verma',
    'Sonia Verma',
    'Rajat Singh',
    'Birju Pandey',
    'Ashish Singhal',
    'Ayush Singh',
    'Anjani Gutpta',
    'Harsh Verma',
    'Sonia Verma',
    'Rajat Singh',
    'Birju Pandey',
    'Ashish Singhal',
    'Ayush Singh',
    'Anjani Gutpta',
    'Harsh Verma',
    'Sonia Verma',
    'Rajat Singh',
    'Birju Pandey',
    'Ashish Singhal',
    'Ayush Singh',
    'Anjani Gutpta',
    'Harsh Verma',
    'Sonia Verma',
    'Rajat Singh',
    'Birju Pandey',
    'Ashish Singhal',
    'Ayush Singh',
    'Anjani Gutpta',
    'Harsh Verma',
    'Sonia Verma',
    'Rajat Singh',
    'Birju Pandey',
    'Ashish Singhal',
    'Ayush Singh',
    'Anjani Gutpta',
    'Harsh Verma',
    'Sonia Verma',
    'Rajat Singh',
  ];

  final List<String> patientID = [
    '020462',
    '007318',
    '020462',
    '020462',
    '020462',
    '020462',
    '020462',
    '020462',
    '020462',
    '020462',
    '020462',
    '020462',
    '020462',
    '020462',
    '007318',
    '020462',
    '020462',
    '020462',
    '020462',
    '020462',
    '020462',
    '020462',
    '007318',
    '020462',
    '020462',
    '020462',
    '020462',
    '020462',
    '020462',
    '020462',
    '020462',
    '020462',
    '020462',
    '020462',
    '020462',
    '007318',
    '020462',
    '020462',
    '020462',
    '020462',
    '020462',
    '020462',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xff242424),
        ),
        child: loading
            ? Center(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/Loading.gif'),
                    ),
                  ),
                ),
              )
            : Stack(
                children: <Widget>[
                  Column(
                    children: [
                      Neumorphic(
                        child: Container(
                          height: 300,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                kPrimaryColor,
                                kPrimaryColor,
                              ],
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 80),
                              Center(
                                child: Container(
                                  height: 60,
                                  width: 1000,
                                  child: Neumorphic(
                                    style: NeumorphicStyle(
                                      color: Colors.white,
                                      lightSource: LightSource(0, 0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Neumorphic(
                                        style: NeumorphicStyle(
                                          color: Colors.white,
                                          depth: 0,
                                          lightSource: LightSource(0, 0),
                                        ),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.search,
                                                size: 25,
                                                color: Colors.black,
                                              ),
                                            ),
                                            Text(
                                              'Search For Patients',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 50),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 525,
                                ),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(height: 10),
                                        Container(
                                          height: 60,
                                          width: 60,
                                          child: Neumorphic(
                                            style: NeumorphicStyle(
                                                color: Colors.white,
                                                lightSource: LightSource(0, 0)),
                                            child: FlatButton(
                                              child: Icon(
                                                Icons.add_circle,
                                                color: kPrimaryColor,
                                                size: 45,
                                              ),
                                              onPressed: () {},
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                      ],
                                    ),
                                    SizedBox(width: 20),
                                    Column(
                                      children: [
                                        SizedBox(height: 10),
                                        Container(
                                          height: 60,
                                          width: 60,
                                          child: Neumorphic(
                                            style: NeumorphicStyle(
                                                color: Colors.white,
                                                lightSource: LightSource(0, 0)),
                                            child: FlatButton(
                                              child: Icon(
                                                Icons.edit,
                                                size: 45,
                                                color: kPrimaryColor,
                                              ),
                                              onPressed: () {},
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                      ],
                                    ),
                                    SizedBox(width: 565),
                                    Column(
                                      children: [
                                        SizedBox(height: 10),
                                        Container(
                                          height: 60,
                                          width: 60,
                                          child: Neumorphic(
                                            style: NeumorphicStyle(
                                                color: Colors.white,
                                                lightSource: LightSource(0, 0)),
                                            child: FlatButton(
                                              child: Icon(
                                                Icons.add_circle,
                                                size: 45,
                                                color: kPrimaryColor,
                                              ),
                                              onPressed: () {},
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                      ],
                                    ),
                                    SizedBox(width: 20),
                                    Column(
                                      children: [
                                        SizedBox(height: 10),
                                        Container(
                                          height: 60,
                                          width: 60,
                                          child: Neumorphic(
                                            style: NeumorphicStyle(
                                                color: Colors.white,
                                                lightSource: LightSource(0, 0)),
                                            child: FlatButton(
                                              child: Icon(
                                                Icons.remove_circle,
                                                size: 45,
                                                color: kPrimaryColor,
                                              ),
                                              onPressed: () {},
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                      ],
                                    ),
                                    SizedBox(width: 20),
                                    Column(
                                      children: [
                                        SizedBox(height: 10),
                                        Container(
                                          height: 60,
                                          width: 60,
                                          child: Neumorphic(
                                            style: NeumorphicStyle(
                                                color: Colors.white,
                                                lightSource: LightSource(0, 0)),
                                            child: FlatButton(
                                              child: Icon(
                                                Icons.edit,
                                                size: 45,
                                                color: kPrimaryColor,
                                              ),
                                              onPressed: () {},
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      Center(
                        child: Row(
                          children: [
                            SizedBox(width: 270),
                            Center(
                              child: Column(
                                children: [
                                  Center(
                                    child: Text(
                                      'RECENTLY ADDED',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.58,
                                    width: 700,
                                    child: ListView.separated(
                                      scrollDirection: Axis.vertical,
                                      itemCount: patients.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return GestureDetector(
                                          onTap: () async {
                                            setState(() => loading = true);
                                            Map<String, dynamic>
                                                currentDocJson =
                                                await patientController
                                                    .getPatientCurrentDocJsonById(
                                                        patients[index].id);
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    Resgistration(),
                                              ),
                                            );
                                          },
                                          child: Card(
                                            elevation: 5,
                                            child: ListTile(
                                              selectedTileColor:
                                                  Colors.blue[400],
                                              tileColor: Color(0xff666666),
                                              title: Text(
                                                patients[index].name,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              trailing: Text(
                                                'ID: ${patients[index].id}',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                      separatorBuilder:
                                          (BuildContext context, int index) =>
                                              const Divider(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 50),
                            Center(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 50),
                                    child: Text(
                                      'APPOINTMENTS APPROACHING SOON',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.58,
                                    width: 700,
                                    child: ListView.separated(
                                      scrollDirection: Axis.vertical,
                                      itemCount: patientName.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    Resgistration(),
                                              ),
                                            );
                                          },
                                          child: Card(
                                            elevation: 5,
                                            child: ListTile(
                                              tileColor: Color(0xff666666),
                                              title: Text(
                                                patientName[index],
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              trailing: Text(
                                                'ID: ${patientID[index]}',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                      separatorBuilder:
                                          (BuildContext context, int index) =>
                                              const Divider(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  CollapsingNavigationDrawer(),
                ],
              ),
      ),
    );
  }
}
