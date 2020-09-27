import 'package:dhikrama_app/presentation/style/container_style.dart';
import 'package:division/division.dart';
import 'package:flutter/material.dart';

import 'widgets/form_login_style.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[50],
        body: SafeArea(
          child: Stack(
            children: [
              BacgroundHome(),
              ImageBackground(),
              FormLoginStyle(),
            ],
          ),
        ));
  }
}

// Image background worker
class ImageBackground extends StatelessWidget {
  const ImageBackground({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 400,
          child: Image.asset(
            'lib/images/worker.png',
          ),
        ),
      ],
    );
  }
}

//Container Background color amber
class BacgroundHome extends StatelessWidget {
  const BacgroundHome({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Parent(
        style: parentStyle.clone()
          ..height(double.infinity)
          ..borderRadius(topRight: 500)
          ..linearGradient(
            colors: [
              Colors.amber,
              Colors.amber[100],
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ));
  }
}
