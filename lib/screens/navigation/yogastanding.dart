import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class yogastanding extends StatefulWidget {
  const yogastanding({Key? key}) : super(key: key);

  @override
  State<yogastanding> createState() => _yogastandingState();
}

class _yogastandingState extends State<yogastanding> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Standing Yoga'),
          backgroundColor: Colors.purple,
        ),
        body: Container(
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
                    SizedBox(
                      height: 0.3 * screenHeight,
                      width: 0.8 * screenWidth,
                      child: Image.asset('assets/standing1.jpeg'),
                    ),
                    SizedBox(
                      height: 0.04 * screenHeight,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 0.35 * screenHeight,
                          width: 0.35 * screenWidth,
                          child: Image.asset('assets/standing2.jpeg'),
                        ),
                        SizedBox(
                          width: 0.04 * screenWidth,
                        ),
                        SizedBox(
                          height: 0.35 * screenHeight,
                          width: 0.36 * screenWidth,
                          child: Image.asset('assets/standing3.jpeg'),
                        ),
                      ],
                    )
                  ]),
            ))); // Container
  }
}
