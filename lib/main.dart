/*
1.Round tap button for adding a new glass
2.list of glass of water intakes
3.consume-number of glasses and time
4.show list
*/

import 'package:flutter/material.dart';
import 'package:water_intake_tracker/home_page.dart';

void main() {
  runApp(WaterInakeTrackerApp());
}

class WaterInakeTrackerApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage(),
    );
  }
}
