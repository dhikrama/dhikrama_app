import 'package:dhikrama_app/presentation/style/container_style.dart';
import 'package:dhikrama_app/presentation/style/text_style.dart';
import 'package:division/division.dart';
import 'package:flutter/material.dart';

class RecoProfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Txt(
          "Populer Profil",
          style: textStyle.clone()
            ..fontSize(20)
            ..opacity(1)
            ..margin(left: 20),
        ),
        Parent(
          style: parentStyle.clone()
            ..height(50)
            ..margin(all: 10)
            ..width(double.infinity),
          child: Container(
            child: Row(
              children: [],
            ),
          ),
        ),
      ],
    );
  }
}
