import 'package:flutter/material.dart';
import 'package:cataik/models/destination.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

const List<Destination> allDestinations = <Destination>[
  Destination(
    0,
    'Home',
    FeatherIcons.home,
    Colors.white,
  ),
  Destination(
    1,
    'Business',
    FeatherIcons.pieChart,
    Colors.white,
  ),
  Destination(
    2,
    'School',
    FeatherIcons.refreshCcw,
    Colors.white,
  ),
  Destination(
    3,
    'Flight',
    FeatherIcons.user,
    Colors.white,
  )
];
