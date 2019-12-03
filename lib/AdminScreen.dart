import 'package:flutter/material.dart';

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
  final String correctMaasID = '';
  final String correctPassword = '';



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
        'AdminPage': (context) => AdminScreen(),
      },
    );
  }

  Widget _buildNarrowLayout(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image(
          image: AssetImage("assets/maasLogo_SymbolOnly.png"),
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
        RaisedButton(

        )
      ],
    );
  }

  Widget _buildWideLayout(BuildContext context) {
    return Row(

    );
  }

}