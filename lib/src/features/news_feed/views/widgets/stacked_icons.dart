import 'package:flutter/material.dart';

class StackedIcons extends StatelessWidget {
  final List<Widget> items;
  final double itemsDimension;
  final double shiftPercentage;

  const StackedIcons({
    super.key,
    required this.items,
    this.itemsDimension = 18,
    this.shiftPercentage = 0.8,
  }) : assert(
          (shiftPercentage <= 1 && shiftPercentage >= 0),
          "Shift percentage should be in range of 0 to 1!",
        );

  @override
  Widget build(BuildContext context) {
    double width = items.isEmpty ? 0 : itemsDimension;
    final widgetList = items.indexed.map((item) {
      final (index, widget) = item;
      final left = itemsDimension - (itemsDimension * shiftPercentage);
      width = (left * index) + itemsDimension;
      final value = Padding(
        padding: EdgeInsets.only(left: left * index),
        child: SizedBox.square(
          dimension: itemsDimension,
          child: widget,
        ),
      );
      return value;
    }).toList();
    return SizedBox(
      width: width,
      height: itemsDimension,
      child: Stack(children: widgetList),
    );
  }
}
