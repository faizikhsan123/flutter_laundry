import 'package:flutter/material.dart';

class CustomOrder extends StatelessWidget {
  final String label;
  final String label2;


  const CustomOrder({
    super.key,
    required this.label,
    required this.label2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        Text(label2, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
