import 'package:flutter/material.dart';
import 'package:water_intake_tracker/water_intake.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<WaterIntake> waterIntakeList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[900],
        title: const Text(
          'Water Intake Tracker',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              waterIntakeList.add(WaterIntake(1, DateTime.now()));
            },
            child: Container(
              height: 100,
              width: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.pink[200],
                border: Border.all(color: Colors.pink, width: 4),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Text(
                'Tap to add',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: waterIntakeList.length,
                itemBuilder: (context, index) {
                  return ListTile();
                }),
          )
        ],
      ),
    );
  }
}
