import 'package:flutter/material.dart';
import 'AnimatedWave.dart';

class AdminScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return null;
  }
}
class AdminLogin extends StatefulWidget {
  AdminLoginState createState() => AdminLoginState();
}

class AdminLoginState extends State{

  TextEditingController _maasIDController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  final String correctMaasID = 'admin';
  final String correctPassword = 'password';
  String loginState = '';



  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Landing Page',
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

  Widget _buildNarrowLayout(BuildContext context){
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
                if(_maasIDController.text == correctMaasID &&
                    _passwordController.text == correctPassword){
                  Navigator.pushNamed(context, "AdminPage");
                }else{
                  setState(() {
                    loginState = "Wrong ID / Password";
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
                loginState,
                style: TextStyle(
                  fontSize: 28,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 5
                    ..color = Colors.black,
                ),
              ),
              Text(
                loginState,
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
                      if(_maasIDController.text == correctMaasID &&
                          _passwordController.text == correctPassword){
                        Navigator.pushNamed(context, "AdminPage");
                      }else{
                        setState(() {
                          loginState = "Wrong ID / Password";
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
                      loginState,
                      style: TextStyle(
                        fontSize: 28,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 5
                          ..color = Colors.black,
                      ),
                    ),
                    Text(
                      loginState,
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

  onBottom(Widget child) => Positioned.fill(                                    // This properly places the waves within the stack
    child: Align(
      alignment: Alignment.bottomCenter,
      child: child,
    ),
  );

}