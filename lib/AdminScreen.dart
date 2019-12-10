import 'package:flutter/material.dart';
import 'FileMaster.dart';
import 'package:simple_animations/simple_animations.dart';

class AdminScreen extends StatefulWidget {
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State {
  FileMaster _fileReader = FileMaster();
  List<Widget> _userResponses = new List<Widget>();

  double _managementRatingAVG = 0;
  double _performanceRatingAVG = 0;
  double _satisfactionRatingAVG = 0;
  double _difficultyRatingAVG = 0;
  double _comfortableWithBrainScan = 0;
  double _getAlongWithDroids = 0;
  double _existentiallyUnstable = 0;
  double _dopamineResistant = 0;

  @override
  Widget build(BuildContext context) {
    if (_userResponses.length == 0) {
      _loadUserResponses();
    }

    return MaterialApp(
        title: "Admin Page",
        home: new Scaffold(
            appBar: new AppBar(
              title: Text(
                "Admin Report",
                style: TextStyle(
                  color: Colors.orangeAccent,
                  fontSize: 26,
                ),
              ),
              backgroundColor: Color.fromRGBO(51, 51, 51, 1),
              leading: Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Image(
                  image: AssetImage("assets/maasLogo_SymbolOnly.png"),
                ),
              ),
            ),
            backgroundColor: Colors.orangeAccent,
            body: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30, right: 30, top: 20, bottom: 10),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: Center(
                            child: Text(
                              "Employee Survey Summary",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.orangeAccent,
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.orangeAccent,
                          thickness: 3,
                        ),
                        SizedBox(
                          height: 180,
                          child: ListView(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 20, top: 10, left: 40),
                                child: Text(
                                  "Average Management Rating: " +
                                      _managementRatingAVG.toStringAsFixed(1),
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.orangeAccent,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 20, left: 40),
                                child: Text(
                                  "Average Self Assessed Performance Rating: " +
                                      _performanceRatingAVG.toStringAsFixed(1),
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.orangeAccent,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 20, left: 40),
                                child: Text(
                                  "Average Satisfaction Rating: " +
                                      _satisfactionRatingAVG.toStringAsFixed(1),
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.orangeAccent,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 20, left: 40),
                                child: Text(
                                  "Average Position Difficulty Rating: " +
                                      _difficultyRatingAVG.toStringAsFixed(1),
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.orangeAccent,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 20, left: 40),
                                child: Text(
                                  "Employees Comfortable With Brain Scan: " +
                                      _comfortableWithBrainScan
                                          .toStringAsFixed(3) +
                                      "%",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.orangeAccent,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 20, left: 40),
                                child: Text(
                                  "Employes Who Get Along With Manager Droids: " +
                                      _getAlongWithDroids.toStringAsFixed(3) +
                                      "%",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.orangeAccent,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 20, left: 40),
                                child: Text(
                                  "Existentially Unstable Employees: " +
                                      _existentiallyUnstable
                                          .toStringAsFixed(3) +
                                      "%",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.orangeAccent,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 20, left: 40),
                                child: Text(
                                  "Employees Resistant To Dopamine Manipulation: " +
                                      _dopamineResistant.toStringAsFixed(3) +
                                      "%",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.orangeAccent,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: _userResponses.length,
                    itemBuilder: (BuildContext context, int index) {
                      return _userResponses[index];
                    },
                  ),
                ),
              ],
            )));
  }

  Future<List<Widget>> _loadUserResponses() async {
    String responses;
    var entryArray = [];
    List<Widget> shipBack = new List<Widget>();

    responses = await _fileReader.readFile().then((String text) {
      return text;
    });
    var entries = responses.trim().split("\n");

    for (int i = 0; i < entries.length; i++) {
      var currentEntry;
      if (i % 2 == 0) {
        currentEntry = entries[i];
        var entryData = currentEntry.split("%");
        entryArray.add(entryData);
      }
    }

    int mTemp = 0;
    int pTemp = 0;
    int sTemp = 0;
    int dTemp = 0;
    double bTemp = 0;
    double drTemp = 0;
    double eTemp = 0;
    double doTemp = 0;

    for (int j = 0; j < entryArray.length; j++) {
      var currentEntry = entryArray[j];
      String firstName = currentEntry[0];
      String lastName = currentEntry[1];
      String maasID = currentEntry[2];
      String jobTitle = currentEntry[3];
      String managementRating = currentEntry[4];
      String performanceRating = currentEntry[5];
      String satisfactionRating = currentEntry[6];
      String difficultyRating = currentEntry[7];
      String brainScanCheck = currentEntry[8] == 'true' ? "Yes" : "No";
      String droidCheck = currentEntry[9] == 'true' ? "Yes" : "No";
      String vibeCheck = currentEntry[10] == 'true' ? "Yes" : "No";
      String dopamineCheck = currentEntry[11] == 'true' ? "Yes" : "No";

      mTemp += int.parse(managementRating);
      pTemp += int.parse(performanceRating);
      sTemp += int.parse(satisfactionRating);
      dTemp += int.parse(difficultyRating);

      bTemp += brainScanCheck == 'Yes' ? 1 : 0;
      drTemp += droidCheck == 'Yes' ? 1 : 0;
      eTemp += vibeCheck == 'Yes' ? 1 : 0;
      doTemp += dopamineCheck == 'Yes' ? 1 : 0;

      Widget newWidget = _FadeIn(
        delay: 1.5,
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Container(
            decoration: BoxDecoration(color: Colors.black),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 20, bottom: 10),
                      child: Text(
                        firstName,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.orangeAccent,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 5, top: 20, right: 2, bottom: 10),
                      child: Text(
                        lastName,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.orangeAccent,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 40, top: 0, right: 2, bottom: 10),
                      child: Text(
                        jobTitle,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          fontStyle: FontStyle.italic,
                          color: Colors.orangeAccent,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, top: 0, right: 2, bottom: 10),
                      child: Text(
                        "MAAS ID: " + maasID,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.orangeAccent,
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.orangeAccent,
                  thickness: 5,
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, top: 20, right: 2, bottom: 10),
                      child: Text(
                        "Management Rating: " + managementRating,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.orangeAccent,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, top: 20, right: 2, bottom: 10),
                      child: Text(
                        "Performance Rating: " + performanceRating,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.orangeAccent,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 2, bottom: 10),
                      child: Text(
                        "Satisfaction Rating: " + satisfactionRating,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.orangeAccent,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 2, bottom: 10),
                      child: Text(
                        "Difficulty Rating: " + difficultyRating,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.orangeAccent,
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.orangeAccent,
                  thickness: 5,
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 20, bottom: 5),
                      child: Text(
                        "Uncomfortable With Brain Scan: " + brainScanCheck,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.orangeAccent,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 5, bottom: 5),
                      child: Text(
                        "Doesn't Get Along With Droids: " + droidCheck,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.orangeAccent,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 5),
                      child: Text(
                        "Existentially Unstable: " + vibeCheck,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.orangeAccent,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 25),
                      child: Text(
                        "Dopamine Manipulator Resistant: " + dopamineCheck,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.orangeAccent,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20, right: 20),
                      child: Image(
                        height: 40,
                        width: 40,
                        image: AssetImage("assets/maasLogo_SymbolOnly.png"),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
      shipBack.add(newWidget);
    }
    setState(() {
      _userResponses = shipBack;
      _managementRatingAVG = mTemp / shipBack.length;
      _performanceRatingAVG = pTemp / shipBack.length;
      _satisfactionRatingAVG = sTemp / shipBack.length;
      _difficultyRatingAVG = dTemp / shipBack.length;
      _comfortableWithBrainScan = bTemp / shipBack.length;
      _getAlongWithDroids = drTemp / shipBack.length;
      _existentiallyUnstable = eTemp / shipBack.length;
      _dopamineResistant = doTemp / shipBack.length;
    });
  }
}

class AdminLogin extends StatefulWidget {
  _AdminLoginState createState() => _AdminLoginState();
}

class _AdminLoginState extends State {
  TextEditingController _maasIDController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  final String _correctMaasID = '';
  final String _correctPassword = '';
  String _loginState = '';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Admin Login',
      home: new Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Color.fromRGBO(51, 51, 51, 1),
        body: OrientationBuilder(
          builder: (context, orientation) {
            return MediaQuery.of(context).orientation == Orientation.portrait
                ? _buildNarrowLayout(context)
                : _buildWideLayout(context);
          },
        ),
      ),
      routes: {
        'AdminPage': (context) => AdminScreen(),
      },
    );
  }

  Widget _buildNarrowLayout(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 100,
        ),
        SizedBox(
          height: 300,
          width: 300,
          child: Image(
            image: AssetImage("assets/maasLogo_SymbolOnly.png"),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 100, right: 100),
          child: TextField(
            style: TextStyle(color: Colors.black),
            decoration: new InputDecoration(
              filled: true,
              fillColor: Colors.orangeAccent,
              hintText: "maasID",
            ),
            keyboardType: TextInputType.text,
            controller: _maasIDController,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 100, right: 100),
          child: TextField(
            style: TextStyle(color: Colors.black),
            obscureText: true,
            decoration: new InputDecoration(
              filled: true,
              fillColor: Colors.orangeAccent,
              hintText: "password",
            ),
            keyboardType: TextInputType.text,
            controller: _passwordController,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 200, right: 200),
          child: ButtonTheme(
            minWidth: 180,
            height: 50,
            child: RaisedButton(
              color: Colors.black,
              onPressed: () {
                if (_maasIDController.text == _correctMaasID &&
                    _passwordController.text == _correctPassword) {
                  Navigator.pushNamed(context, "AdminPage");
                } else {
                  setState(() {
                    _loginState = "Wrong ID / Password";
                  });
                }
              },
              child: Stack(
                children: <Widget>[
                  Text(
                    'Log In',
                    style: TextStyle(
                      fontSize: 28,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 5
                        ..color = Colors.black,
                    ),
                  ),
                  Text(
                    'Log In',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.orangeAccent,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Center(
          child: Stack(
            children: <Widget>[
              Text(
                _loginState,
                style: TextStyle(
                  fontSize: 28,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 5
                    ..color = Colors.black,
                ),
              ),
              Text(
                _loginState,
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.orangeAccent,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildWideLayout(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Image(
                image: AssetImage("assets/maasLogo_SymbolOnly.png"),
              ),
            )
          ],
        ),
        Expanded(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 200,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100, right: 100),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: new InputDecoration(
                    filled: true,
                    fillColor: Colors.orangeAccent,
                    hintText: "maasID",
                  ),
                  keyboardType: TextInputType.text,
                  controller: _maasIDController,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100, right: 100),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  obscureText: true,
                  decoration: new InputDecoration(
                    filled: true,
                    fillColor: Colors.orangeAccent,
                    hintText: "password",
                  ),
                  keyboardType: TextInputType.text,
                  controller: _passwordController,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200, right: 200),
                child: ButtonTheme(
                  minWidth: 180,
                  height: 50,
                  child: RaisedButton(
                    color: Colors.black,
                    onPressed: () {
                      if (_maasIDController.text.trim() == _correctMaasID &&
                          _passwordController.text.trim() == _correctPassword) {
                        Navigator.pushNamed(context, "AdminPage");
                      } else {
                        setState(() {
                          _loginState = "Wrong ID / Password";
                        });
                      }
                    },
                    child: Stack(
                      children: <Widget>[
                        Text(
                          'Log In',
                          style: TextStyle(
                            fontSize: 28,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 5
                              ..color = Colors.black,
                          ),
                        ),
                        Text(
                          'Log In',
                          style: TextStyle(
                            fontSize: 28,
                            color: Colors.orangeAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Stack(
                  children: <Widget>[
                    Text(
                      _loginState,
                      style: TextStyle(
                        fontSize: 28,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 5
                          ..color = Colors.black,
                      ),
                    ),
                    Text(
                      _loginState,
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  _onBottom(Widget child) => Positioned.fill(
        // This properly places the waves within the stack
        child: Align(
          alignment: Alignment.bottomCenter,
          child: child,
        ),
      );
}

class _FadeIn extends StatelessWidget {
  final double delay;
  final Widget child;

  _FadeIn({this.delay, this.child});

  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("opacity")
          .add(Duration(milliseconds: 500), Tween(begin: 0.0, end: 1.0)),
      Track("translateX").add(
          Duration(milliseconds: 500), Tween(begin: 130.0, end: 0.0),
          curve: Curves.easeOut)
    ]);

    return ControlledAnimation(
      delay: Duration(milliseconds: (300 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builderWithChild: (context, child, animation) => Opacity(
        opacity: animation["opacity"],
        child: Transform.translate(
            offset: Offset(animation["translateX"], 0), child: child),
      ),
    );
  }
}
