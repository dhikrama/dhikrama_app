import 'package:dhikrama_app/presentation/style/container_style.dart';
import 'package:division/division.dart';
import 'package:flutter/material.dart';

import 'profil_button.dart';
import 'profil_name.dart';

class ContainerProfil extends StatelessWidget {
  const ContainerProfil({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Parent(
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            ProfilName(),
            ProfilButton(),
          ],
        ),
      ),
      style: parentStyle.clone()
        ..margin(all: 10)
        ..width(double.infinity)
        ..elevation(2),
    );
  }
}
