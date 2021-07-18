import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:date_format/date_format.dart';

class TextDateTime extends StatefulWidget {
  final DateTime date;
  const TextDateTime({Key? key, required this.date}) : super(key: key);

  @override
  _TextDateTimeState createState() => _TextDateTimeState();
}

class _TextDateTimeState extends State<TextDateTime> {
  @override
  Widget build(BuildContext context) {
    return Text(
      formatDate(widget.date, [M, ', ', dd, ' ', yyyy, ' - ', HH, ':', nn]),
      style: GoogleFonts.rubik(
        textStyle: Theme.of(context).textTheme.bodyText2,
        color: Colors.grey[600],
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
