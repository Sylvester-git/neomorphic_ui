import 'package:flutter/material.dart';

class spacer extends StatelessWidget {
  final double height;
  const spacer({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
