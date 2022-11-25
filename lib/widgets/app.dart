// ignore_for_file: camel_case_types, prefer_const_constructors, duplicate_ignore, unused_import, unused_field

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nft_app_project/pages/welcome.dart';
import 'package:nft_app_project/utils/extensions.dart';
import 'package:google_fonts/google_fonts.dart';

class nftApp extends StatelessWidget {
  nftApp({super.key});
  final _textStyle = GoogleFonts.dmSans();

  @override
  Widget build(BuildContext context) {
    // this will show the System UI (date and time)
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    // ignore: prefer_const_constructors
    // return material app with a welcome screen
    return MaterialApp(
      // Remove banner
      debugShowCheckedModeBanner: false,
      // Theme for the app and modifying the default light theme
      theme: ThemeData.light().copyWith(
        backgroundColor: Colors.black,
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
