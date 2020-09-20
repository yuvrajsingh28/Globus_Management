import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:globus_management/Dashboard/Side%20Drawer/collapsing_navigation_drawer.dart';
import 'package:globus_management/LoginPage/constants.dart';
import 'package:globus_management/Pages/clinicalFindings.dart';
import 'package:globus_management/Pages/intialAssessmentTest.dart';
import 'package:globus_management/Pages/patientCharterForm.dart';
import 'package:globus_management/Pages/vulnerabilityDailogBox.dart';
import 'package:intl/intl.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'faceSheetFrom.dart';

class Resgistration extends StatefulWidget {
  @override
  _ResgistrationState createState() => _ResgistrationState();
}

class _ResgistrationState extends State<Resgistration> {
  final controller = CarouselController();
  int _currentStep = 0;
  int currentPage = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        width: 75,
        height: 75,
        child: RawMaterialButton(
          fillColor: kPrimaryColor,
          shape: CircleBorder(),
          elevation: 10,
          child: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 25,
          ),
          onPressed: () {
            print('page changed');
            controller.animateToPage(currentPage + 1);
          },
        ),
      ),
      body: Stack(
        children: <Widget>[
          Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(100, 15, 100, 15),
                child: Neumorphic(
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: StepProgressIndicator(
                      onTap: (index) {
                        return () {
                          print('$index pressed');
                          setState(() => _currentStep = index);
                          //controller.animateToPage(index);
                        };
                      },
                      totalSteps: 6,
                      currentStep: _currentStep + 1,
                      size: 30,
                      roundedEdges: Radius.circular(5),
                      selectedColor: kPrimaryColor,
                      unselectedColor: Colors.grey[200],
                      /*customStep: (index, color, _) => color == kPrimaryColor
                          ? Container(
                              color: color,
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                              ),
                            )
                          : Container(
                              color: color,
                              child: Icon(
                                Icons.remove,
                              ),
                            ),*/
                    ),
                  ),
                ),
              ),
              CarouselSlider(
                items: [
                  FaceSheetForm(),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 20,
                    ),
                    child: PatientCharterForm(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 250 / 2,
                      top: 250 / 2,
                    ),
                    child: VulnerabilityDailogBox(),
                  ),
                  IntialAssessmentTest(),
                  ClinicalFindings(),
                ],
                carouselController: controller,
                options: CarouselOptions(
                    //carouselController: controller,
                    scrollPhysics: NeverScrollableScrollPhysics(),
                    aspectRatio: MediaQuery.of(context).size.aspectRatio,
                    viewportFraction: 1.0,
                    height: 820,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) {
                      currentPage = index;
                    }),
              ),
            ],
          ),
          CollapsingNavigationDrawer(),
        ],
      ),
    );
  }
}
