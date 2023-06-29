import 'package:flutter/material.dart';

class CustomLabelsRangeSlider extends StatelessWidget {
  final List<String> labels;
  final int selectedStart;
  final int selectedEnd;
  final void Function(int, int) onChanged;

  const CustomLabelsRangeSlider(
      {super.key,
      required this.labels,
      required this.onChanged,
      required this.selectedStart,
      required this.selectedEnd});

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
        values: RangeValues(selectedStart.toDouble(), selectedEnd.toDouble()),
        min: 0,
        max: labels.length - 1,
        divisions: labels.length - 1,
        labels: RangeLabels(labels[selectedStart], labels[selectedEnd]),
        onChanged: (val) {
          onChanged(val.start.toInt(), val.end.toInt());
        });
  }
}
