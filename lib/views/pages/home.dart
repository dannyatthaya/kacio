import 'dart:ui';
import 'package:cataik/views/components/cataik_bar_chart.dart';
import 'package:cataik/views/components/today_datetime.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

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
          backgroundColor: Colors.blue.shade600,
          foregroundColor: Colors.white,
          brightness: Brightness.dark,
          elevation: 0,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Ionicons.ellipsis_vertical),
              color: Colors.white,
              splashRadius: 20.0,
              onPressed: () {},
            ),
          ],
        ),
        body: SlidingUpPanel(
          minHeight: 250.0,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24.0),
            topRight: Radius.circular(24.0),
          ),
          panelBuilder: (ScrollController sc) => _scrollingList(sc),
          body: Container(
            color: Colors.blue.shade600,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Total Current Balance",
                        style: GoogleFonts.rubik(
                            textStyle: Theme.of(context).textTheme.bodyText1,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Rp1.500K",
                        style: GoogleFonts.rubik(
                            textStyle: Theme.of(context).textTheme.headline3,
                            fontWeight: FontWeight.w600,
                            fontFeatures: const [FontFeature.tabularFigures()],
                            color: Colors.white),
                      ),
                    ],
                  ),
                  const CataikBarChart(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _scrollingList(ScrollController sc) {
    return ListView.builder(
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
                        color: Colors.blue.shade600,
                        width: 80,
                        height: 4,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 24.0, left: 16.0),
                        child: Text(
                          "History",
                          style: GoogleFonts.rubik(
                              textStyle: Theme.of(context).textTheme.bodyText1,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  _card(i)
                ],
              )
            : _card(i);
      },
    );
  }

  Widget _card(int i) {
    return Center(
      child: Card(
        elevation: 8,
        shadowColor: Colors.cyan.shade50,
        margin: const EdgeInsets.only(
          top: 12.0,
          bottom: 12.0,
          left: 16.0,
          right: 16.0,
        ),
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
                  child: Icon(Ionicons.card),
                ),
                title: Text(
                  'Lorem Bank',
                  style: GoogleFonts.rubik(
                    textStyle: Theme.of(context).textTheme.bodyText1,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                trailing: Text(
                  "+ Rp500K",
                  style: GoogleFonts.rubik(
                    textStyle: Theme.of(context).textTheme.headline6,
                    color: Colors.blue.shade800,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                subtitle: TextDateTime(date: DateTime.now()),
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
