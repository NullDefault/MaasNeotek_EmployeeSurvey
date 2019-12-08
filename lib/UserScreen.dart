import 'package:flutter/material.dart';

class UserScreen extends StatefulWidget {
  UserScreenState createState() => UserScreenState();
}



class UserScreenState extends State {

  TextEditingController firstNameController = new TextEditingController();
  TextEditingController lastNameController = new TextEditingController();
  TextEditingController maasIDController = new TextEditingController();
  TextEditingController jobTitleController = new TextEditingController();

  int _selfManagementAssessment = 0;
  int _selfPerformanceAssessment = 0;
  int _selfSatisfactionAssessment = 0;
  int _selfDifficultyAssessment = 0;

  bool _brainScanCheck = false;
  bool _droidCheck = false;
  bool _vibeCheck = false;
  bool _dopamineCheck = false;

  String submissionStatus = "";

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
                  controller: firstNameController,
                  decoration: new InputDecoration(
                      fillColor: Colors.black,
                      filled: true,

                      prefixIcon: Icon(
                        Icons.portrait, color: Colors.orangeAccent,),

                      hintText: "First Name",
                      hintStyle: TextStyle(
                          color: Colors.orangeAccent, fontSize: 20)

                  ),
                  style: TextStyle(color: Colors.orangeAccent, fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: TextField(
                  controller: lastNameController,
                  decoration: new InputDecoration(
                      fillColor: Colors.black,
                      filled: true,

                      prefixIcon: Icon(
                        Icons.portrait, color: Colors.orangeAccent,),

                      hintText: "Last Name",
                      hintStyle: TextStyle(
                          color: Colors.orangeAccent, fontSize: 20)

                  ),
                  style: TextStyle(color: Colors.orangeAccent, fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: TextField(
                  controller: maasIDController,
                  decoration: new InputDecoration(
                      fillColor: Colors.black,
                      filled: true,

                      prefixIcon: Icon(
                        Icons.contacts, color: Colors.orangeAccent,),

                      hintText: "Maas ID",
                      hintStyle: TextStyle(
                          color: Colors.orangeAccent, fontSize: 20)

                  ),
                  style: TextStyle(color: Colors.orangeAccent, fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: TextField(
                  controller: jobTitleController,
                  decoration: new InputDecoration(
                      fillColor: Colors.black,
                      filled: true,

                      prefixIcon: Icon(
                        Icons.add_to_queue, color: Colors.orangeAccent,),

                      hintText: "Job Title",
                      hintStyle: TextStyle(
                          color: Colors.orangeAccent, fontSize: 20)

                  ),
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
                  decoration: BoxDecoration(
                      color: Colors.black
                  ),
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
                          Radio(value: 1,
                            groupValue: _selfPerformanceAssessment,
                            onChanged: _handle_self_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 2,
                            groupValue: _selfPerformanceAssessment,
                            onChanged: _handle_self_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 3,
                            groupValue: _selfPerformanceAssessment,
                            onChanged: _handle_self_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 4,
                            groupValue: _selfPerformanceAssessment,
                            onChanged: _handle_self_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 5,
                            groupValue: _selfPerformanceAssessment,
                            onChanged: _handle_self_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 6,
                            groupValue: _selfPerformanceAssessment,
                            onChanged: _handle_self_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 7,
                            groupValue: _selfPerformanceAssessment,
                            onChanged: _handle_self_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 8,
                            groupValue: _selfPerformanceAssessment,
                            onChanged: _handle_self_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 9,
                            groupValue: _selfPerformanceAssessment,
                            onChanged: _handle_self_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 10,
                            groupValue: _selfPerformanceAssessment,
                            onChanged: _handle_self_assesment,
                            activeColor: Colors.orangeAccent,)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black
                  ),
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
                          Radio(value: 1,
                            groupValue: _selfSatisfactionAssessment,
                            onChanged: _handle_satisfaction_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 2,
                            groupValue: _selfSatisfactionAssessment,
                            onChanged: _handle_satisfaction_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 3,
                            groupValue: _selfSatisfactionAssessment,
                            onChanged: _handle_satisfaction_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 4,
                            groupValue: _selfSatisfactionAssessment,
                            onChanged: _handle_satisfaction_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 5,
                            groupValue: _selfSatisfactionAssessment,
                            onChanged: _handle_satisfaction_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 6,
                            groupValue: _selfSatisfactionAssessment,
                            onChanged: _handle_satisfaction_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 7,
                            groupValue: _selfSatisfactionAssessment,
                            onChanged: _handle_satisfaction_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 8,
                            groupValue: _selfSatisfactionAssessment,
                            onChanged: _handle_satisfaction_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 9,
                            groupValue: _selfSatisfactionAssessment,
                            onChanged: _handle_satisfaction_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 10,
                            groupValue: _selfSatisfactionAssessment,
                            onChanged: _handle_satisfaction_assesment,
                            activeColor: Colors.orangeAccent,)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black
                  ),
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
                          Radio(value: 1,
                            groupValue: _selfManagementAssessment,
                            onChanged: _handle_management_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 2,
                            groupValue: _selfManagementAssessment,
                            onChanged: _handle_management_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 3,
                            groupValue: _selfManagementAssessment,
                            onChanged: _handle_management_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 4,
                            groupValue: _selfManagementAssessment,
                            onChanged: _handle_management_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 5,
                            groupValue: _selfManagementAssessment,
                            onChanged: _handle_management_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 6,
                            groupValue: _selfManagementAssessment,
                            onChanged: _handle_management_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 7,
                            groupValue: _selfManagementAssessment,
                            onChanged: _handle_management_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 8,
                            groupValue: _selfManagementAssessment,
                            onChanged: _handle_management_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 9,
                            groupValue: _selfManagementAssessment,
                            onChanged: _handle_management_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 10,
                            groupValue: _selfManagementAssessment,
                            onChanged: _handle_management_assesment,
                            activeColor: Colors.orangeAccent,)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black
                  ),
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
                          Radio(value: 1,
                            groupValue: _selfDifficultyAssessment,
                            onChanged: _handle_difficulty_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 2,
                            groupValue: _selfDifficultyAssessment,
                            onChanged: _handle_difficulty_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 3,
                            groupValue: _selfDifficultyAssessment,
                            onChanged: _handle_difficulty_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 4,
                            groupValue: _selfDifficultyAssessment,
                            onChanged: _handle_difficulty_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 5,
                            groupValue: _selfDifficultyAssessment,
                            onChanged: _handle_difficulty_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 6,
                            groupValue: _selfDifficultyAssessment,
                            onChanged: _handle_difficulty_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 7,
                            groupValue: _selfDifficultyAssessment,
                            onChanged: _handle_difficulty_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 8,
                            groupValue: _selfDifficultyAssessment,
                            onChanged: _handle_difficulty_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 9,
                            groupValue: _selfDifficultyAssessment,
                            onChanged: _handle_difficulty_assesment,
                            activeColor: Colors.orangeAccent,),
                          Radio(value: 10,
                            groupValue: _selfDifficultyAssessment,
                            onChanged: _handle_difficulty_assesment,
                            activeColor: Colors.orangeAccent,)
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
                  decoration: BoxDecoration(
                      color: Colors.black
                  ),
                  child: Text(
                    'Please Report If You Have Experienced Any Of The Following:',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 19,
                        color: Colors.orangeAccent
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "I Was Made Uncomfortable During The Daily Behavioral Brain Scan",
                              style: TextStyle(
                                  color: Colors.orangeAccent, fontSize: 24
                              ),
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
                            style: TextStyle(
                                color: Colors.orange
                            ),
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
                            style: TextStyle(
                                color: Colors.orange
                            ),
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
                  decoration: BoxDecoration(
                      color: Colors.black
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "I Have Been Aproached By A Manager Droid In A Violent Manner",
                              style: TextStyle(
                                  color: Colors.orangeAccent, fontSize: 24
                              ),
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
                            style: TextStyle(
                                color: Colors.orange
                            ),
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
                            style: TextStyle(
                                color: Colors.orange
                            ),
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
                  decoration: BoxDecoration(
                      color: Colors.black
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "My Dopamine Drip Malfunctioned And I Could Not Perform At Max Capacity",
                              style: TextStyle(
                                  color: Colors.orangeAccent, fontSize: 25
                              ),
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
                            style: TextStyle(
                                color: Colors.orange
                            ),
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
                            style: TextStyle(
                                color: Colors.orange
                            ),
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
                  decoration: BoxDecoration(
                      color: Colors.black
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "I Was Uncertain About My Place In The Larger Context Of The Universe",
                              style: TextStyle(
                                  color: Colors.orangeAccent, fontSize: 24
                              ),
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
                            style: TextStyle(
                                color: Colors.orange
                            ),
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
                            style: TextStyle(
                                color: Colors.orange
                            ),
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
                  onPressed: _attemptSubmission,
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
                    submissionStatus,
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
        )
    );
  }

  void _attemptSubmission() {
    if (firstNameController.text != "" && lastNameController.text != ""
        && maasIDController.text != "" && jobTitleController.text != ""
        && _selfDifficultyAssessment != 0 && _selfSatisfactionAssessment != 0
        && _selfPerformanceAssessment != 0 && _selfManagementAssessment != 0) {
      submitResults();
    }
    else {
      setState(() {
        submissionStatus = "Please Complete Every Form Before Submission";
      });
    }
  }

  void submitResults(){

  }


  void _handle_difficulty_assesment(int val){
    setState(() {
      _selfDifficultyAssessment = val;
    });
  }

  void _handle_satisfaction_assesment(int val){
    setState(() {
      _selfSatisfactionAssessment = val;
    });
  }

  void _handle_management_assesment(int val){
    setState(() {
      _selfManagementAssessment = val;
    });
  }

  void _handle_self_assesment(int val){
    setState(() {
      _selfPerformanceAssessment = val;
    });
  }
}