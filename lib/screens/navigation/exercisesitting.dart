import 'package:flutter/material.dart';
import 'package:yoga/screens/navigation/steps/seatedknee.dart';

class exesitting extends StatefulWidget {
  const exesitting({Key? key}) : super(key: key);

  @override
  State<exesitting> createState() => _exesittingState();
}

class _exesittingState extends State<exesitting> {
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
                  height: 30,
                ),
                Text('Sitting',
                    style: const TextStyle(color: Colors.white, fontSize: 30)),
                SizedBox(
                  height: 80,
                ),
                InkWell(
                  child: SizedBox(
                    height: 200,
                    width: 300,
                    child: Image.network(
                        "https://www.btod.com/blog/wp-content/uploads/2017/01/04-stretches-seated-knee-to-chest.jpg"),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const seatedknee()),
                  ),
                ),
                SizedBox(
                  height: 200,
                  width: 300,
                  child: Image.network(
                      "https://www.btod.com/blog/wp-content/uploads/2017/01/05-stretches-seated-hamstring.jpg"),
                ),
                SizedBox(
                  height: 200,
                  width: 300,
                  child: Image.network(
                      "https://www.btod.com/blog/wp-content/uploads/2017/01/06-stretches-seated-figure-4.jpg"),
                ),
              ]),
        ));
  }
}
