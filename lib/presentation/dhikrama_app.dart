import 'package:dhikrama_app/presentation/page/profile/profil_foreman.dart';
import 'package:flutter/material.dart';

class DhikramaApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dhikrama Group',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProfilForeman(),
    );
  }
}
