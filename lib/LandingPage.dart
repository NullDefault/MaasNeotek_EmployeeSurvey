import 'package:flutter/material.dart';
import 'AdminScreen.dart';
import 'UserScreen.dart';
import 'AnimatedWave.dart';

class LandingPage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Landing Page',
        home: new Scaffold(
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
        'AdminLogin': (context) => AdminLogin(),
        'UserScreen': (context) => UserScreen(),
    },
    );
  }


  Widget _buildNarrowLayout(BuildContext context){
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            SizedBox(
              height: 150,
            ),
            Image(
              image: AssetImage("assets/maasLogo.jpg"),
            ),
            SizedBox(
              height: 150,
            ),
            ButtonTheme(
              minWidth: 300,
              height: 100,
              child: RaisedButton(
                onPressed: () { Navigator.pushNamed(context, "UserScreen"); },
                textColor: Colors.orangeAccent,
                color: Colors.grey,
                highlightColor: Colors.yellowAccent[100],
                elevation: 10,
                child: Stack(
                  children: <Widget>[
                    Text(
                      'Begin Employee Satisfaction Survey',
                      style: TextStyle(
                        fontSize: 28,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 5
                          ..color = Colors.black,
                      ),
                    ),
                    Text(
                      'Begin Employee Satisfaction Survey',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ButtonTheme(
              minWidth: 200,
              height: 100,
              child: RaisedButton(
                onPressed: () { Navigator.pushNamed(context, "AdminLogin"); },
                textColor: Colors.deepOrangeAccent,
                color: Colors.grey,
                highlightColor: Colors.redAccent,
                elevation: 10,
                child: Stack(
                  children: <Widget>[
                    Text(
                      'Proceed to Admin Login',
                      style: TextStyle(
                        fontSize: 24,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 5
                          ..color = Colors.black,
                      ),
                    ),
                    Text(
                      'Proceed to Admin Login',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        onBottom(
          AnimatedWave(
            height: 80,
            speed: 0.7,
            color: Colors.orangeAccent,
          ),
        ),
        onBottom(
          AnimatedWave(
            height: 65,
            speed: 0.7,
            color: Color.fromRGBO(51, 51, 51, 1),
          ),
        ),
      ],
    );
  }

  Widget _buildWideLayout(BuildContext context){
    return Stack(
      children: <Widget>[
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage("assets/maasLogo_SymbolOnly.png"),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonTheme(
                minWidth: 300,
                height: 100,
                child: RaisedButton(
                  onPressed: () { Navigator.pushNamed(context, "UserScreen"); },
                  textColor: Colors.orangeAccent,
                  color: Colors.grey,
                  highlightColor: Colors.yellowAccent[100],
                  elevation: 10,
                  child: Stack(
                    children: <Widget>[
                      Text(
                        'Begin Employee Satisfaction Survey',
                        style: TextStyle(
                          fontSize: 28,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 5
                            ..color = Colors.black,
                        ),
                      ),
                      Text(
                        'Begin Employee Satisfaction Survey',
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.orangeAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ButtonTheme(
                minWidth: 200,
                height: 100,
                child: RaisedButton(
                  onPressed: () { Navigator.pushNamed(context, "AdminLogin"); },
                  textColor: Colors.deepOrangeAccent,
                  color: Colors.grey,
                  highlightColor: Colors.redAccent,
                  elevation: 10,
                  child: Stack(
                    children: <Widget>[
                      Text(
                        'Proceed to Admin Login',
                        style: TextStyle(
                          fontSize: 24,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 5
                            ..color = Colors.black,
                        ),
                      ),
                      Text(
                        'Proceed to Admin Login',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.orangeAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
        onBottom(
          AnimatedWave(
            height: 80,
            speed: 0.7,
            color: Colors.orangeAccent,
          ),
        ),
        onBottom(
          AnimatedWave(
            height: 65,
            speed: 0.7,
            color: Color.fromRGBO(51, 51, 51, 1),
          ),
        ),
      ]
    );
  }

  onBottom(Widget child) => Positioned.fill(                                    // This properly places the waves within the stack
    child: Align(
      alignment: Alignment.bottomCenter,
      child: child,
    ),
  );

}

