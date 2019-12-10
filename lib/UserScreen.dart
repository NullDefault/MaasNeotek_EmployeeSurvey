import 'package:flutter/material.dart';
import 'FileMaster.dart';
import 'LandingPage.dart';

class UserScreen extends StatefulWidget {
  UserScreenState createState() => UserScreenState();
}

class UserScreenState extends State {
  FileMaster _fileWriter = new FileMaster();

  TextEditingController _firstNameController = new TextEditingController();
  TextEditingController _lastNameController = new TextEditingController();
  TextEditingController _maasIDController = new TextEditingController();
  TextEditingController _jobTitleController = new TextEditingController();

  int _selfManagementAssessment = 0;
  int _selfPerformanceAssessment = 0;
  int _selfSatisfactionAssessment = 0;
  int _selfDifficultyAssessment = 0;

  bool _brainScanCheck = false;
  bool _droidCheck = false;
  bool _vibeCheck = false;
  bool _dopamineCheck = false;

  String _submissionStatus = "";

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "Employee Survey",
        theme: ThemeData(
          unselectedWidgetColor: Colors.orange,
          primarySwatch: Colors.blue,
        ),
        home: new Scaffold(
          appBar: new AppBar(
            backgroundColor: Color.fromRGBO(51, 51, 51, 1),
            leading: Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Image(
                image: AssetImage("assets/maasLogo_SymbolOnly.png"),
              ),
            ),
          ),
          backgroundColor: Colors.orangeAccent,
          body: ListView(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  'Personal Identification',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: TextField(
                  keyboardType: TextInputType.text,
                  controller: _firstNameController,
                  decoration: new InputDecoration(
                      fillColor: Colors.black,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.portrait,
                        color: Colors.orangeAccent,
                      ),
                      hintText: "First Name",
                      hintStyle:
                          TextStyle(color: Colors.orangeAccent, fontSize: 20)),
                  style: TextStyle(color: Colors.orangeAccent, fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: TextField(
                  keyboardType: TextInputType.text,
                  controller: _lastNameController,
                  decoration: new InputDecoration(
                      fillColor: Colors.black,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.portrait,
                        color: Colors.orangeAccent,
                      ),
                      hintText: "Last Name",
                      hintStyle:
                          TextStyle(color: Colors.orangeAccent, fontSize: 20)),
                  style: TextStyle(color: Colors.orangeAccent, fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: _maasIDController,
                  decoration: new InputDecoration(
                      fillColor: Colors.black,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.contacts,
                        color: Colors.orangeAccent,
                      ),
                      hintText: "Maas ID",
                      hintStyle:
                          TextStyle(color: Colors.orangeAccent, fontSize: 20)),
                  style: TextStyle(color: Colors.orangeAccent, fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: TextField(
                  keyboardType: TextInputType.text,
                  controller: _jobTitleController,
                  decoration: new InputDecoration(
                      fillColor: Colors.black,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.add_to_queue,
                        color: Colors.orangeAccent,
                      ),
                      hintText: "Job Title",
                      hintStyle:
                          TextStyle(color: Colors.orangeAccent, fontSize: 20)),
                  style: TextStyle(color: Colors.orangeAccent, fontSize: 24),
                ),
              ),
              Divider(
                color: Colors.black,
                height: 15,
              ),
              Center(
                child: Text(
                  'Self Assesment',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  decoration: BoxDecoration(color: Colors.black),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Please Assess Your Perfomance 1-10",
                                style: TextStyle(
                                    color: Colors.orangeAccent, fontSize: 29))
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Radio(
                            value: 1,
                            groupValue: _selfPerformanceAssessment,
                            onChanged: _handleSelfAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 2,
                            groupValue: _selfPerformanceAssessment,
                            onChanged: _handleSelfAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 3,
                            groupValue: _selfPerformanceAssessment,
                            onChanged: _handleSelfAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 4,
                            groupValue: _selfPerformanceAssessment,
                            onChanged: _handleSelfAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 5,
                            groupValue: _selfPerformanceAssessment,
                            onChanged: _handleSelfAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 6,
                            groupValue: _selfPerformanceAssessment,
                            onChanged: _handleSelfAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 7,
                            groupValue: _selfPerformanceAssessment,
                            onChanged: _handleSelfAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 8,
                            groupValue: _selfPerformanceAssessment,
                            onChanged: _handleSelfAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 9,
                            groupValue: _selfPerformanceAssessment,
                            onChanged: _handleSelfAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 10,
                            groupValue: _selfPerformanceAssessment,
                            onChanged: _handleSelfAssessment,
                            activeColor: Colors.orangeAccent,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  decoration: BoxDecoration(color: Colors.black),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("How Satisfied Are You With Your Job 1-10",
                                style: TextStyle(
                                    color: Colors.orangeAccent, fontSize: 26))
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Radio(
                            value: 1,
                            groupValue: _selfSatisfactionAssessment,
                            onChanged: _handleSatisfactionAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 2,
                            groupValue: _selfSatisfactionAssessment,
                            onChanged: _handleSatisfactionAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 3,
                            groupValue: _selfSatisfactionAssessment,
                            onChanged: _handleSatisfactionAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 4,
                            groupValue: _selfSatisfactionAssessment,
                            onChanged: _handleSatisfactionAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 5,
                            groupValue: _selfSatisfactionAssessment,
                            onChanged: _handleSatisfactionAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 6,
                            groupValue: _selfSatisfactionAssessment,
                            onChanged: _handleSatisfactionAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 7,
                            groupValue: _selfSatisfactionAssessment,
                            onChanged: _handleSatisfactionAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 8,
                            groupValue: _selfSatisfactionAssessment,
                            onChanged: _handleSatisfactionAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 9,
                            groupValue: _selfSatisfactionAssessment,
                            onChanged: _handleSatisfactionAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 10,
                            groupValue: _selfSatisfactionAssessment,
                            onChanged: _handleSatisfactionAssessment,
                            activeColor: Colors.orangeAccent,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  decoration: BoxDecoration(color: Colors.black),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                                "How Satisfied Are You With Your Management 1-10",
                                style: TextStyle(
                                    color: Colors.orangeAccent, fontSize: 22))
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Radio(
                            value: 1,
                            groupValue: _selfManagementAssessment,
                            onChanged: _handleManagementAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 2,
                            groupValue: _selfManagementAssessment,
                            onChanged: _handleManagementAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 3,
                            groupValue: _selfManagementAssessment,
                            onChanged: _handleManagementAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 4,
                            groupValue: _selfManagementAssessment,
                            onChanged: _handleManagementAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 5,
                            groupValue: _selfManagementAssessment,
                            onChanged: _handleManagementAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 6,
                            groupValue: _selfManagementAssessment,
                            onChanged: _handleManagementAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 7,
                            groupValue: _selfManagementAssessment,
                            onChanged: _handleManagementAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 8,
                            groupValue: _selfManagementAssessment,
                            onChanged: _handleManagementAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 9,
                            groupValue: _selfManagementAssessment,
                            onChanged: _handleManagementAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 10,
                            groupValue: _selfManagementAssessment,
                            onChanged: _handleManagementAssessment,
                            activeColor: Colors.orangeAccent,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  decoration: BoxDecoration(color: Colors.black),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                                "Please Rate How Difficult You Feel Your Position Is 1-10",
                                style: TextStyle(
                                    color: Colors.orangeAccent, fontSize: 20))
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Radio(
                            value: 1,
                            groupValue: _selfDifficultyAssessment,
                            onChanged: _handleDifficultyAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 2,
                            groupValue: _selfDifficultyAssessment,
                            onChanged: _handleDifficultyAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 3,
                            groupValue: _selfDifficultyAssessment,
                            onChanged: _handleDifficultyAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 4,
                            groupValue: _selfDifficultyAssessment,
                            onChanged: _handleDifficultyAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 5,
                            groupValue: _selfDifficultyAssessment,
                            onChanged: _handleDifficultyAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 6,
                            groupValue: _selfDifficultyAssessment,
                            onChanged: _handleDifficultyAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 7,
                            groupValue: _selfDifficultyAssessment,
                            onChanged: _handleDifficultyAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 8,
                            groupValue: _selfDifficultyAssessment,
                            onChanged: _handleDifficultyAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 9,
                            groupValue: _selfDifficultyAssessment,
                            onChanged: _handleDifficultyAssessment,
                            activeColor: Colors.orangeAccent,
                          ),
                          Radio(
                            value: 10,
                            groupValue: _selfDifficultyAssessment,
                            onChanged: _handleDifficultyAssessment,
                            activeColor: Colors.orangeAccent,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
                height: 15,
              ),
              Center(
                child: Text(
                  'Incident Reports',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  alignment: Alignment.center,
                  height: 60,
                  decoration: BoxDecoration(color: Colors.black),
                  child: Text(
                    'Please Report If You Have Experienced Any Of The Following:',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 19,
                        color: Colors.orangeAccent),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  decoration: BoxDecoration(color: Colors.black),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "I Was Made Uncomfortable During The Daily Behavioral Brain Scan",
                              style: TextStyle(
                                  color: Colors.orangeAccent, fontSize: 24),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Yes",
                            style: TextStyle(color: Colors.orange),
                          ),
                          Checkbox(
                            value: _brainScanCheck,
                            checkColor: Colors.black,
                            activeColor: Colors.orange,
                            onChanged: (value) {
                              setState(() {
                                _brainScanCheck = value;
                              });
                            },
                          ),
                          Text(
                            "No",
                            style: TextStyle(color: Colors.orange),
                          ),
                          Checkbox(
                            value: !_brainScanCheck,
                            checkColor: Colors.black,
                            activeColor: Colors.orange,
                            onChanged: (value) {
                              setState(() {
                                _brainScanCheck = !value;
                              });
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  decoration: BoxDecoration(color: Colors.black),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "I Have Been Aproached By A Manager Droid In A Violent Manner",
                              style: TextStyle(
                                  color: Colors.orangeAccent, fontSize: 24),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Yes",
                            style: TextStyle(color: Colors.orange),
                          ),
                          Checkbox(
                            value: _droidCheck,
                            checkColor: Colors.black,
                            activeColor: Colors.orange,
                            onChanged: (value) {
                              setState(() {
                                _droidCheck = value;
                              });
                            },
                          ),
                          Text(
                            "No",
                            style: TextStyle(color: Colors.orange),
                          ),
                          Checkbox(
                            value: !_droidCheck,
                            checkColor: Colors.black,
                            activeColor: Colors.orange,
                            onChanged: (value) {
                              setState(() {
                                _droidCheck = !value;
                              });
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  decoration: BoxDecoration(color: Colors.black),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "My Dopamine Drip Malfunctioned And I Could Not Perform At Max Capacity",
                              style: TextStyle(
                                  color: Colors.orangeAccent, fontSize: 25),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Yes",
                            style: TextStyle(color: Colors.orange),
                          ),
                          Checkbox(
                            value: _dopamineCheck,
                            checkColor: Colors.black,
                            activeColor: Colors.orange,
                            onChanged: (value) {
                              setState(() {
                                _dopamineCheck = value;
                              });
                            },
                          ),
                          Text(
                            "No",
                            style: TextStyle(color: Colors.orange),
                          ),
                          Checkbox(
                            value: !_dopamineCheck,
                            checkColor: Colors.black,
                            activeColor: Colors.orange,
                            onChanged: (value) {
                              setState(() {
                                _dopamineCheck = !value;
                              });
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  decoration: BoxDecoration(color: Colors.black),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "I Was Uncertain About My Place In The Larger Context Of The Universe",
                              style: TextStyle(
                                  color: Colors.orangeAccent, fontSize: 24),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Yes",
                            style: TextStyle(color: Colors.orange),
                          ),
                          Checkbox(
                            value: _vibeCheck,
                            checkColor: Colors.black,
                            activeColor: Colors.orange,
                            onChanged: (value) {
                              setState(() {
                                _vibeCheck = value;
                              });
                            },
                          ),
                          Text(
                            "No",
                            style: TextStyle(color: Colors.orange),
                          ),
                          Checkbox(
                            value: !_vibeCheck,
                            checkColor: Colors.black,
                            activeColor: Colors.orange,
                            onChanged: (value) {
                              setState(() {
                                _vibeCheck = !value;
                              });
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 30, bottom: 20, left: 170, right: 170),
                child: RaisedButton(
                  onPressed: () {
                    if (_firstNameController.text != "" &&
                        _lastNameController.text != "" &&
                        _maasIDController.text != "" &&
                        _jobTitleController.text != "" &&
                        _selfDifficultyAssessment != 0 &&
                        _selfSatisfactionAssessment != 0 &&
                        _selfPerformanceAssessment != 0 &&
                        _selfManagementAssessment != 0) {
                      String submission = createSubmission();
                      _fileWriter.writeFile(submission);
                      Navigator.pop(context);
                    } else {
                      setState(() {
                        _submissionStatus =
                            "Please Complete Every Form Before Submission";
                      });
                    }
                  },
                  color: Colors.black,
                  elevation: 8,
                  child: Stack(
                    children: <Widget>[
                      Text(
                        "Submit",
                        style: TextStyle(
                          fontSize: 28,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 5
                            ..color = Colors.black,
                        ),
                      ),
                      Text(
                        "Submit",
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.orangeAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Text(
                    _submissionStatus,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  String createSubmission() {
    String shipBack =
        _firstNameController.text +
        "%" +
        _lastNameController.text +
        '%' +
        _maasIDController.text +
        '%' +
        _jobTitleController.text +
        '%' +
        _selfManagementAssessment.toString() +
        '%' +
        _selfPerformanceAssessment.toString() +
        '%' +
        _selfSatisfactionAssessment.toString() +
        '%' +
        _selfDifficultyAssessment.toString() +
        '%' +
        _brainScanCheck.toString() +
        '%' +
        _droidCheck.toString() +
        "%" +
        _vibeCheck.toString() +
        "%" +
        _dopamineCheck.toString() +
        "\n";
    return shipBack;
  }

  void _handleDifficultyAssessment(int val) {
    setState(() {
      _selfDifficultyAssessment = val;
    });
  }

  void _handleSatisfactionAssessment(int val) {
    setState(() {
      _selfSatisfactionAssessment = val;
    });
  }

  void _handleManagementAssessment(int val) {
    setState(() {
      _selfManagementAssessment = val;
    });
  }

  void _handleSelfAssessment(int val) {
    setState(() {
      _selfPerformanceAssessment = val;
    });
  }
}
