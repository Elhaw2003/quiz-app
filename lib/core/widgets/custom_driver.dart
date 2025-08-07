import 'package:flutter/material.dart';

class CustomDriver extends StatelessWidget {
  const CustomDriver({super.key, required this.color, required this.indent, required this.endIndent});
  final Color color;
  final double indent;
  final double endIndent;
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color,
      thickness: 0.5,
      indent: indent,
      endIndent: endIndent,
    );
  }
}
