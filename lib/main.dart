import 'package:custom_labels_slider/custom_labels_range_slider.dart';
import 'package:custom_labels_slider/custom_labels_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() {
    return _MainAppState();
  }
}

class _MainAppState extends State<MainApp> {
  List<String> labels = ['0.5', '1.0', '2.0', '3.0', '4.0', '5.0', '10.0', '15.0'];
  int _selectedIndex = 0;

  int _selectedStart = 0;
  int _selectedEnd = 0;

  void changeSelectedIndex(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  void changeRange(int start, int end){
    setState(() {
    _selectedStart = start;
    _selectedEnd = end;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomLabelsSlider(
              labels: labels,
              selectedIndex: _selectedIndex,
              onChanged: (val) {
                changeSelectedIndex(val);
              },
            ),
            const SizedBox(height: 50,),
             CustomLabelsRangeSlider(
              labels: labels,
              selectedStart: _selectedStart,
              selectedEnd: _selectedEnd,
              onChanged: (start, end) {
                changeRange(start, end);
              },
            ),
          ],
        )),
      ),
    );
  }
}
