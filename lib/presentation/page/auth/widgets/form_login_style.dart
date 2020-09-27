import 'package:dhikrama_app/presentation/style/container_style.dart';
import 'package:dhikrama_app/presentation/style/text_style.dart';
import 'package:division/division.dart';
import 'package:flutter/material.dart';

class FormLoginStyle extends StatefulWidget {
  @override
  _FormLoginStyleState createState() => _FormLoginStyleState();
}

class _FormLoginStyleState extends State<FormLoginStyle> {
  @override
  Widget build(BuildContext context) {
    bool _isUsernameFieldActive = false;
    bool _isPasswordFieldActive = false;

    final _inputFieldStyle = (bool isActive, TxtStyle activeStyle) => TxtStyle()
      ..textColor(Colors.black)
      ..textAlign.left()
      ..fontSize(16)
      ..padding(horizontal: 15, vertical: 15)
      ..margin(horizontal: 50, vertical: 10)
      ..borderRadius(all: 10)
      ..border(all: 2, color: Colors.blueAccent)
      ..alignment.center()
      ..background.color(Colors.transparent)
      ..animate(300, Curves.easeOut)
      ..add(isActive ? activeStyle : null, override: true);

    final TxtStyle inputFieldActiveStyle = TxtStyle()
      ..background.color(Colors.blue)
      ..bold(true)
      ..textColor(Colors.white);

    final TxtStyle submitButtonStyle = TxtStyle()
      ..textColor(Colors.white)
      ..bold()
      ..ripple(true, splashColor: Colors.white.withOpacity(0.1))
      ..alignment.centerLeft()
      ..textAlign.center()
      ..width(150)
      ..background.color(Colors.blue)
      ..borderRadius(all: 10)
      ..margin(top: 30, horizontal: 50)
      ..padding(vertical: 15)
      ..elevation(10, opacity: 0.5);

    final titleStyle = TxtStyle()
      ..fontSize(24)
      ..bold()
      ..margin(bottom: 30, horizontal: 50)
      ..alignment.centerLeft();

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Txt(
            "Masuk",
            style: titleStyle,
          ),
          Txt("",
              style: _inputFieldStyle(
                  _isUsernameFieldActive, inputFieldActiveStyle)
                ..editable(
                  autoFocus: true,
                  placeholder: 'Masukan Username',
                  onFocusChange: (hasFocus) {
                    if (hasFocus != _isUsernameFieldActive)
                      setState(() => _isUsernameFieldActive = hasFocus);
                  },
                )),
          Txt(
            '',
            style:
                _inputFieldStyle(_isPasswordFieldActive, inputFieldActiveStyle)
                  ..editable(
                    placeholder: 'Masukan Sandi',
                    obscureText: true,
                    onFocusChange: (hasFocus) {
                      if (hasFocus != _isPasswordFieldActive)
                        setState(() => _isPasswordFieldActive = hasFocus);
                    },
                  ),
          ),
          Txt('Masuk', style: submitButtonStyle),
          SizedBox(
            height: 15,
          ),
          Container(
            child: Txt(
              'belum Punya akun? Daftar Sekarang',
              style: textStyle.clone()..italic(),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            child: Txt(
              'Atau masuk dengan',
              style: textStyle.clone()..fontSize(15),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ButtonMediaSocial()
        ],
      ),
    );
  }
}

class ButtonMediaSocial extends StatelessWidget {
  const ButtonMediaSocial({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 20,
          ),
          Parent(
              style: parentStyle.clone()
                ..background.color(Colors.blue)
                ..elevation(5)
                ..width(120)
                ..height(40)
                ..background.image(path: 'assets/icons/google.png')),
          SizedBox(
            width: 20,
          ),
          Parent(
              style: parentStyle.clone()
                ..border(all: 2, color: Colors.blue)
                ..elevation(5, opacity: .4)
                ..width(120)
                ..height(40)
                ..background.image(path: 'assets/icons/facebook.png'))
        ],
      ),
    );
  }
}
