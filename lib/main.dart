import 'package:flutter/material.dart';
import 'LandingPage.dart';

void main() => runApp(KioskApp());

class KioskApp extends StatelessWidget {
  final appTitle = 'MaasBiolabs_EmployeeSurvey';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: appTitle,
      initialRoute: 'landingPage',
      routes: {
        'landingPage': (context) => LandingPage(),
      },
    );
  }
}
