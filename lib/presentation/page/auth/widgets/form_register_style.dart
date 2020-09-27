import 'package:dhikrama_app/presentation/style/text_style.dart';
import 'package:division/division.dart';
import 'package:flutter/material.dart';

class FormRegisterStyle extends StatefulWidget {
  @override
  _FormRegisterStyleState createState() => _FormRegisterStyleState();
}

class _FormRegisterStyleState extends State<FormRegisterStyle> {
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
            "Pendaftaran",
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
          Txt("",
              style: _inputFieldStyle(
                  _isUsernameFieldActive, inputFieldActiveStyle)
                ..editable(
                  autoFocus: true,
                  placeholder: 'Masukan Email',
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
          Txt('Daftar', style: submitButtonStyle),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Txt(
              'Sudah Punya akun? Login Sekarang',
              style: textStyle.clone()..italic(),
            ),
          ),
        ],
      ),
    );
  }
}
