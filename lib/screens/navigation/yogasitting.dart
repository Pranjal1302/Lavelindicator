import 'package:flutter/material.dart';

class yogasitting extends StatefulWidget {
  const yogasitting({Key? key}) : super(key: key);

  @override
  State<yogasitting> createState() => _yogasittingState();
}

class _yogasittingState extends State<yogasitting> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 166, 0, 255),
              Color.fromARGB(255, 182, 62, 182),
              Color.fromARGB(255, 124, 90, 158),
              Color.fromARGB(255, 72, 50, 144),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 0.1 * screenHeight, 0, 0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Sitting',
                    style: const TextStyle(color: Colors.white, fontSize: 30)),
                SizedBox(
                  height: 0.25 * screenHeight,
                  width: 0.9 * screenWidth,
                  child: Image.asset('assets/sitting1.jpeg'),
                ),
                SizedBox(
                  height: 0.25 * screenHeight,
                  width: 0.9 * screenWidth,
                  child: Image.asset('assets/sitting2.jpeg'),
                ),
                SizedBox(
                  height: 0.25 * screenHeight,
                  width: 0.9 * screenWidth,
                  child: Image.asset('assets/sitting3.jpeg'),
                ),
              ]),
        ));
  }
}
