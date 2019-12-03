import 'package:flutter/material.dart';
import 'dart:math';
import 'package:simple_animations/simple_animations.dart';
import 'AdminScreen.dart';
import 'UserScreen.dart';

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

class AnimatedWave extends StatelessWidget {
  final double height;
  final double speed;
  final double offset;
  final Color color;

  AnimatedWave({this.height, this.speed, this.offset = 0.0, this.color});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        height: height,
        width: constraints.biggest.width,
        child: ControlledAnimation(
            playback: Playback.LOOP,
            duration: Duration(milliseconds: (5000 / speed).round()),
            tween: Tween(begin: 0.0, end: 2 * pi),
            builder: (context, value) {
              return CustomPaint(
                foregroundPainter: CurvePainter(value + offset, color),
              );
            }),
      );
    });
  }
}

class CurvePainter extends CustomPainter {                                      // This is the class that paints the waves described in the class above
  final double value;
  final Color color;

  CurvePainter(this.value, this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final white = Paint()..color = color;
    final path = Path();

    final y1 = sin(value);
    final y2 = sin(value + pi / 2);
    final y3 = sin(value + pi);

    final startPointY = size.height * (0.5 + 0.4 * y1);
    final controlPointY = size.height * (0.5 + 0.4 * y2);
    final endPointY = size.height * (0.5 + 0.4 * y3);

    path.moveTo(size.width * 0, startPointY);
    path.quadraticBezierTo(
        size.width * 0.5, controlPointY, size.width, endPointY);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, white);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
