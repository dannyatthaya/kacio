import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:date_format/date_format.dart';

class TextDateTime extends StatefulWidget {
  final DateTime date;
  final List<String> format;
  const TextDateTime({
    Key? key,
    required this.date,
    required this.format,
  }) : super(key: key);

  @override
  _TextDateTimeState createState() => _TextDateTimeState();
}

class _TextDateTimeState extends State<TextDateTime> {
  @override
  Widget build(BuildContext context) {
    return Text(
      formatDate(widget.date, widget.format),
      style: GoogleFonts.rubik(
        textStyle: Theme.of(context).textTheme.bodyText2,
        color: Colors.grey,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
