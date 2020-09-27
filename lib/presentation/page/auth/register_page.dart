import 'package:dhikrama_app/presentation/style/container_style.dart';
import 'package:dhikrama_app/presentation/style/text_style.dart';
import 'package:division/division.dart';
import 'package:flutter/material.dart';

import 'widgets/form_login_style.dart';
import 'widgets/form_register_style.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[50],
        body: SafeArea(
          child: Stack(
            children: [
              BacgroundHome(),
              ImageBackground(),
              FormRegisterStyle(),
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
            'assets/images/worker.png',
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
