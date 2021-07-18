import 'package:cataik/views/main_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleek_button/sleek_button.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blue.shade400,
      systemNavigationBarColor: Colors.blue.shade400,
    ));
    return MaterialApp(
      title: 'Cataik',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: GoogleFonts.rubik(
            fontSize: 98,
            fontWeight: FontWeight.w300,
            letterSpacing: -1.5,
          ),
          headline2: GoogleFonts.rubik(
            fontSize: 61,
            fontWeight: FontWeight.w300,
            letterSpacing: -0.5,
          ),
          headline3: GoogleFonts.rubik(
            fontSize: 49,
            fontWeight: FontWeight.w400,
          ),
          headline4: GoogleFonts.rubik(
            fontSize: 35,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.25,
          ),
          headline5: GoogleFonts.rubik(
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
          headline6: GoogleFonts.rubik(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.15,
          ),
          subtitle1: GoogleFonts.rubik(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.15,
          ),
          subtitle2: GoogleFonts.rubik(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.1,
          ),
          bodyText1: GoogleFonts.rubik(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.5,
          ),
          bodyText2: GoogleFonts.rubik(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.25,
          ),
          button: GoogleFonts.rubik(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.25,
          ),
          caption: GoogleFonts.rubik(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.4,
          ),
          overline: GoogleFonts.rubik(
            fontSize: 10,
            fontWeight: FontWeight.w400,
            letterSpacing: 1.5,
          ),
        ),
      ),
      home: SleekButtonTheme(
        data: SleekButtonThemeData(
          padding: 18,
          textStyle: const TextStyle(fontSize: 11),
          cornerRadius: 16.0,
          iconTheme: const IconThemeData(size: 20),
          fill: Colors.lightBlue.shade800,
          borderWidth: 0,
        ),
        child: const MainLayout(),
      ),
    );
  }
}
