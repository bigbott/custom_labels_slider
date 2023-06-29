import 'package:flutter/material.dart';

class CustomLabelsSlider extends StatelessWidget {
  final List<String> labels;
  final int selectedIndex;
  final void Function(int) onChanged;

  const CustomLabelsSlider(
      {super.key,
      required this.labels,
      required this.onChanged,
      this.selectedIndex = 0});

  @override
  Widget build(BuildContext context) {
    return Slider(
        value: selectedIndex.toDouble(),
        min: 0,
        max: labels.length - 1,
        divisions: labels.length - 1,
        label: labels[selectedIndex],
        onChanged: (val) {
          onChanged(val.toInt());
        });
  }
}
