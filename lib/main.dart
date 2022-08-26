import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  int _value = 6;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[350],
        body: Container(
          margin:
              const EdgeInsets.only(top: 25, left: 15, right: 15, bottom: 0),
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Menu
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                      boxShadow: [
                        //top left shadow
                        const BoxShadow(
                          color: Colors.white,
                          offset: Offset(-5, -5),
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                        //Bottom right shadow
                        BoxShadow(
                          color: Colors.grey.shade500,
                          offset: const Offset(5, 5),
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.menu_open_rounded,
                      color: Colors.black87,
                      size: 35,
                    ),
                  ),
                  //PLAYLIST text
                  const Text(
                    'P L A Y L I S T',
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  ),
                  //More
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                      boxShadow: [
                        //top left shadow
                        const BoxShadow(
                          color: Colors.white,
                          offset: Offset(-5, -5),
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                        //Bottom right shadow
                        BoxShadow(
                          color: Colors.grey.shade500,
                          offset: const Offset(5, 5),
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.more_vert_outlined,
                      color: Colors.black87,
                      size: 35,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              //Music photo
              Container(
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300],
                  boxShadow: [
                    //top left shadow
                    const BoxShadow(
                      color: Colors.white,
                      offset: Offset(-5, -5),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                    //Bottom right shadow
                    BoxShadow(
                      color: Colors.grey.shade500,
                      offset: const Offset(5, 5),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage('Assets/images/music.jpg'),
                            fit: BoxFit.fill),
                      ),
                      child: const Align(
                        alignment: Alignment(1, -1),
                        child: Icon(
                          Icons.favorite_rounded,
                          color: Colors.red,
                          size: 40,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    //Music title
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.thumb_down_alt_outlined,
                          size: 30,
                        ),
                        Text(
                          'Bang Bang (Feat Adam Levine)',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            overflow: TextOverflow.ellipsis,
                          ),
                          maxLines: 1,
                        ),
                        Icon(
                          Icons.thumb_up_alt,
                          size: 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //Shuffle, repaly, music duration.
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    '1:25',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  Icon(
                    Icons.shuffle_rounded,
                    size: 26,
                  ),
                  Icon(
                    Icons.repeat_rounded,
                    size: 26,
                  ),
                  Text(
                    '4:25',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              //Slider
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300],
                  boxShadow: [
                    //top left shadow
                    const BoxShadow(
                      color: Colors.white,
                      offset: Offset(-5, -5),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                    //Bottom right shadow
                    BoxShadow(
                      color: Colors.grey.shade500,
                      offset: const Offset(5, 5),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Slider(
                    value: _value.toDouble(),
                    min: 1.0,
                    max: 20.0,
                    activeColor: Colors.white,
                    inactiveColor: Colors.grey.shade400,
                    onChanged: (double newValue) {
                      setState(() {
                        _value = newValue.round();
                      });
                    },
                    semanticFormatterCallback: (double newValue) {
                      return '${newValue.round()} dollars';
                    }),
              ),
              const SizedBox(height: 10),
              //Play, next, back
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //fast rewind
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                      boxShadow: [
                        //top left shadow
                        const BoxShadow(
                          color: Colors.white,
                          offset: Offset(-5, -5),
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                        //Bottom right shadow
                        BoxShadow(
                          color: Colors.grey.shade500,
                          offset: const Offset(5, 5),
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.fast_rewind_rounded,
                      color: Colors.black87,
                      size: 25,
                    ),
                  ),
                  //pause
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                      boxShadow: [
                        //top left shadow
                        const BoxShadow(
                          color: Colors.white,
                          offset: Offset(-5, -5),
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                        //Bottom right shadow
                        BoxShadow(
                          color: Colors.grey.shade500,
                          offset: const Offset(5, 5),
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.pause,
                      color: Colors.black87,
                      size: 40,
                    ),
                  ),
                  //fast forward
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                      boxShadow: [
                        //top left shadow
                        const BoxShadow(
                          color: Colors.white,
                          offset: Offset(-5, -5),
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                        //Bottom right shadow
                        BoxShadow(
                          color: Colors.grey.shade500,
                          offset: const Offset(5, 5),
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.fast_forward_rounded,
                      color: Colors.black87,
                      size: 25,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
