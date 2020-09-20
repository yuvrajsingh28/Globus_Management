import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:globus_management/LoginPage/constants.dart';

class PatientCharterForm extends StatefulWidget {
  @override
  _PatientCharterFormState createState() => _PatientCharterFormState();
}

class _PatientCharterFormState extends State<PatientCharterForm> {
  bool _isSelected1 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                child: Container(
                  height: 50,
                  width: 450,
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      color: Colors.white,
                      boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(5),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'YOUR RIGHT AS A HOSPITAL PATIENT',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 600, 5),
                child: Text(
                  '1. The right to advice and treatment which fully meets the currently acceptable standards of care.',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 605, 5),
                child: Text(
                  '2. The right to information about what health care service are available and what charges are in.',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 625, 5),
                child: Text(
                  '3. The right to be give a clear description of your medical condition, daignosis, prognosis, and \ntreatment proposed icluding common risks and appropriate alternatives.',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 620, 5),
                child: Text(
                  '4. The right to accept or refuse any medication, investigation or treatment, and to be informed \nof consequences of doing so.',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 985, 5),
                child: Text(
                  '5. The right to a second medical opinion.',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 690, 5),
                child: Text(
                  '6. The right to have your privacy, dignity, and religious and cultural beliefs recpected.',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 615, 5),
                child: Text(
                  '7. The right of access to medical information that relates to your medical condition kept confider.',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 630, 5),
                child: Text(
                  '8. The right to make a complaint through channels provided for this purpose by the hospital too \nhas complaints dealt with promptly and fairly.',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 50,
                  width: 550,
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      color: Colors.white,
                      boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(5),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'YOUR RESPONSIBILITIES AS A HOSPITAL PATIENT',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 690, 5),
                child: Text(
                  '1. Give your health provider as much information as you can about your present health, \npast allergies, and any other relevant details.',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 685, 5),
                child: Text(
                  '2. Follow the prescribed and agreed treatment plan, and conscientiously comply with the \ninstruction give .',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 670, 5),
                child: Text(
                  '3. Show consideration for the right of other patients and health care providers, by following\nthe health rule concerning the patient conduct.',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 645, 5),
                child: Text(
                  '4. Kept an appointment you make, or notify the hospital or clinic as early possible you are un do.',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 650, 5),
                child: Text(
                  '5. Do not ask health care provider to provide incorrect information, and receipts of certificates.',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              SizedBox(height: 50),
              CheckboxListTile(
                title: Text(
                  'Patient have been explained the above mention rights and responsibilities in the premises of',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                activeColor: kPrimaryColor,
                value: _isSelected1,
                onChanged: (bool newValue) {
                  setState(() {
                    _isSelected1 = newValue;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
