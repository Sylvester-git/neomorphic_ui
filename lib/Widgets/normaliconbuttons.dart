import 'package:flutter/material.dart';

class NormalIcons extends StatelessWidget {
  final IconData icon;
  final double size;
  const NormalIcons({
    Key? key,
    required this.icon,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: Colors.black87,
      size: size,
    );
  }
}
