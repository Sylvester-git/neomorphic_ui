import 'package:flutter/material.dart';

class MusicPicture extends StatelessWidget {
  const MusicPicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
            image: AssetImage('Assets/images/music.jpg'), fit: BoxFit.fill),
      ),
      child: const Align(
        alignment: Alignment(1, -1),
        child: Icon(
          Icons.favorite_rounded,
          color: Colors.red,
          size: 40,
        ),
      ),
    );
  }
}
