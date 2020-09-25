import 'package:dhikrama_app/presentation/style/container_style.dart';
import 'package:dhikrama_app/presentation/style/text_style.dart';
import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'widget/profil_foreman/container_profil/container_profil.dart';
import 'widget/profil_foreman/profil_detail/reco_profil.dart';
import 'widget/profil_foreman/profil_detail/slider_blog.dart';

class ProfilForeman extends StatefulWidget {
  @override
  _ProfilForemanState createState() => _ProfilForemanState();
}

class _ProfilForemanState extends State<ProfilForeman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContainerProfil(),
          SizedBox(height: 10),
          SliderBlog(),
          RecoProfil(),
        ],
      ),
    )));
  }
}
