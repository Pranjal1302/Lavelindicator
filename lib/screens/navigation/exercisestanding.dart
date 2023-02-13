import 'package:flutter/material.dart';

class exestanding extends StatefulWidget {
  const exestanding({Key? key}) : super(key: key);

  @override
  State<exestanding> createState() => _exestandingState();
}

class _exestandingState extends State<exestanding> {
  @override
  Widget build(BuildContext context) {
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
          padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                Text('Standing',
                    style: const TextStyle(color: Colors.white, fontSize: 30)),
                SizedBox(
                  height: 80,
                ),
                SizedBox(
                  height: 200,
                  width: 300,
                  child: Image.network(
                      "https://www.btod.com/blog/wp-content/uploads/2017/01/01-stretches-standing-trunk-extension.jpg"),
                ),
                SizedBox(
                  height: 200,
                  width: 300,
                  child: Image.network(
                      "https://www.btod.com/blog/wp-content/uploads/2017/01/02-stretches-standing-quad-hip-flexor.jpg"),
                ),
              ]),
        ));
  }
}
