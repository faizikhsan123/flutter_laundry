import 'package:flutter/material.dart';

class CustomOrder extends StatefulWidget {
  final String label;
  final String label2;

  const CustomOrder({
    super.key,
    required this.label,
    required this.label2,
  });

  @override
  State<CustomOrder> createState() => _CustomOrderState();
}

class _CustomOrderState extends State<CustomOrder> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.label,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        Text(widget.label2, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
