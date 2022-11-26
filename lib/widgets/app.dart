// ignore_for_file: camel_case_types, prefer_const_constructors, duplicate_ignore, unused_import, unused_field

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_work/pages/welcome.dart';
import 'package:home_work/utils/extensions.dart';
import 'package:google_fonts/google_fonts.dart';

class nftApp extends StatelessWidget {
  nftApp({super.key});
  final _textStyle = GoogleFonts.dmSans();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        backgroundColor: Colors.white,
        textTheme: GoogleFonts.dmSansTextTheme().copyWith(
          headline3: TextStyle(color: Colors.black),
          headline4:
              TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
          headline5: TextStyle(color: Colors.black),
        ),
        colorScheme: ColorScheme.light(
          background: Colors.white,
          onBackground: Colors.black,
          error: Color(0xffFF4090),
        ),
      ),
      home: welcomePage(),
    );
  }
}
