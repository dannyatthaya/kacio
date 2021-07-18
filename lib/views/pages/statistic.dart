import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleek_button/sleek_button.dart';

class OverviewScreen extends StatefulWidget {
  const OverviewScreen({Key? key}) : super(key: key);

  @override
  _OverviewScreenState createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.blue.shade400,
          brightness: Brightness.dark,
          toolbarHeight: 80,
          elevation: 0,
          title: Text(
            "Statistic",
            style: TextStyle(
              color: Colors.blue.shade900,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Overview",
                      style: GoogleFonts.rubik(
                        textStyle: Theme.of(context).textTheme.bodyText1,
                        color: Colors.blue.shade900,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Yearly",
                          style: GoogleFonts.rubik(
                            textStyle: Theme.of(context).textTheme.bodyText1,
                            color: Colors.blue.shade400,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Icon(
                            FeatherIcons.chevronDown,
                            color: Colors.blue.shade400,
                            size: 20,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  _statisticCard(
                    icon: FeatherIcons.arrowUpRight,
                    iconBackgroundColor: Colors.red.shade300,
                    label: "Earnings",
                    subtitle: "Rp354K",
                    gradientBegin: Colors.red,
                    gradientEnd: Colors.red.shade200,
                  ),
                  const Padding(padding: EdgeInsets.all(8)),
                  _statisticCard(
                    icon: FeatherIcons.arrowDownLeft,
                    iconBackgroundColor: Colors.blue.shade300,
                    label: "Expenses",
                    subtitle: "Rp126K",
                    gradientBegin: Colors.blue,
                    gradientEnd: Colors.blue.shade200,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _statisticCard({
    required IconData icon,
    required Color iconBackgroundColor,
    required String label,
    required String subtitle,
    required Color gradientBegin,
    required Color gradientEnd,
  }) {
    return Flexible(
      child: SizedBox(
        width: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  gradientBegin,
                  gradientEnd,
                ],
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        color: iconBackgroundColor,
                        padding: const EdgeInsets.all(4),
                        child: Icon(
                          icon,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      Text(
                        label,
                        style: GoogleFonts.rubik(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      subtitle,
                      style: GoogleFonts.nunitoSans(
                        textStyle: Theme.of(context).textTheme.headline5,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
