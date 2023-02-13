import 'package:flutter/material.dart';
import 'package:yoga/screens/navigation/exercisesitting.dart';
import 'package:yoga/screens/navigation/exercisestanding.dart';

class ExercisePage extends StatefulWidget {
  const ExercisePage({Key? key}) : super(key: key);

  @override
  State<ExercisePage> createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            padding: const EdgeInsets.all(50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Exercise',
                    style: TextStyle(color: Colors.white, fontSize: 30)),
                const SizedBox(
                  height: 50,
                ),
                InkWell(
                  child: Stack(children: [
                    SizedBox(
                      width: 300,
                      child: Image.network(
                          "https://www.btod.com/blog/wp-content/uploads/2017/01/01-stretches-standing-trunk-extension.jpg"),
                    ),
                    const Text(
                      '  Standing',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 20),
                    ),
                  ]),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const exestanding()),
                    );
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                InkWell(
                  child: Stack(children: [
                    SizedBox(
                      width: 300,
                      child: Image.network(
                          "https://www.btod.com/blog/wp-content/uploads/2017/01/03-stretches-seated-lateral-trunk.jpg"),
                    ),
                    Text(
                      '  Sitting',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 20),
                    ),
                  ]),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const exesitting()),
                    );
                  },
                ),
              ],
            ),
          )),
    );
  }
}
