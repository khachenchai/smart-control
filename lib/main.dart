import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_control/view/authen.dart';
import 'package:smart_control/view/home.dart';
import 'package:smart_control/view/sign_in.dart';
import 'package:smart_control/view/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Control App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        )
      ),
      home: const AuthenPage()
    );
  }
}