import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:cataik/views/components/today_datetime.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sleek_button/sleek_button.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:date_format/date_format.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade400,
          foregroundColor: Colors.white,
          brightness: Brightness.dark,
          elevation: 0,
          toolbarHeight: 80,
          title: ListTile(
            title: Text(
              "HELLO",
              style: GoogleFonts.rubik(
                textStyle: Theme.of(context).textTheme.bodyText2,
                color: Colors.white,
              ),
            ),
            subtitle: Text(
              "Danny Atthaya",
              style: GoogleFonts.rubik(
                textStyle: Theme.of(context).textTheme.bodyText1,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            leading: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(FeatherIcons.user),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(FeatherIcons.bell),
              color: Colors.white,
              splashRadius: 20.0,
              onPressed: () {},
            ),
          ],
        ),
        body: SlidingUpPanel(
          minHeight: 300.0,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(32.0),
            topRight: Radius.circular(32.0),
          ),
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
            ),
          ],
          panelBuilder: (ScrollController sc) => _scrollingList(sc),
          body: Container(
            color: Colors.blue.shade400,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Current Balance",
                        style: GoogleFonts.rubik(
                          textStyle: Theme.of(context).textTheme.bodyText1,
                          fontFeatures: const [FontFeature.tabularFigures()],
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Rp1,500K",
                          style: GoogleFonts.nunitoSans(
                            textStyle: Theme.of(context).textTheme.headline4,
                            fontWeight: FontWeight.w800,
                            fontFeatures: const [FontFeature.tabularFigures()],
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _mainButton(
                        icon: FeatherIcons.arrowUpRight,
                        label: "Earning",
                      ),
                      _mainButton(
                        icon: FeatherIcons.arrowDownLeft,
                        label: "Expense",
                      ),
                      _mainButton(
                        icon: FeatherIcons.target,
                        label: "Target",
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _mainButton({required IconData icon, required String label}) {
    return Column(
      children: [
        SleekButton(
          onTap: () {},
          style: SleekButtonStyle.flat(
            size: SleekButtonSize.medium,
            context: context,
            color: Colors.lightBlue.shade300,
          ),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            label,
            style: GoogleFonts.rubik(
              textStyle: Theme.of(context).textTheme.bodyText1,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }

  Widget _scrollingList(ScrollController sc) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32.0),
      ),
      child: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        controller: sc,
        itemCount: 50,
        itemBuilder: (BuildContext context, int i) {
          return i == 0
              ? Column(
                  children: [
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          color: Colors.lightBlue.shade300,
                          width: 80,
                          height: 4,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 24.0,
                            left: 20.0,
                            bottom: 12.0,
                          ),
                          child: Text(
                            "Earnings & Expenses",
                            style: GoogleFonts.rubik(
                              textStyle: Theme.of(context).textTheme.headline6,
                              fontWeight: FontWeight.w700,
                              color: Colors.blue.shade900,
                            ),
                          ),
                        ),
                      ],
                    ),
                    _card(i)
                  ],
                )
              : _card(i);
        },
      ),
    );
  }

  Widget _card(int i) {
    return Center(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 3.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: const CircleAvatar(
                  radius: 24,
                  child: Icon(Ionicons.card),
                ),
                title: Text(
                  'Lorem Bank',
                  style: GoogleFonts.nunitoSans(
                    textStyle: Theme.of(context).textTheme.subtitle1,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue.shade900,
                  ),
                ),
                trailing: i.isOdd
                    ? Text(
                        "+ Rp500K",
                        style: GoogleFonts.rubik(
                          textStyle: Theme.of(context).textTheme.headline6,
                          color: Colors.lightGreen.shade300,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      )
                    : Text(
                        "- Rp50K",
                        style: GoogleFonts.rubik(
                          textStyle: Theme.of(context).textTheme.headline6,
                          color: Colors.red.shade400,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                subtitle: TextDateTime(
                  date: DateTime.now(),
                  format: const [M, ', ', dd, ' ', yyyy],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
