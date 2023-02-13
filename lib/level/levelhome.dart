import 'package:flutter/material.dart';
import 'package:yoga/level/addcontainer.dart';
import 'package:yoga/screens/wrapper.dart';

class levelhome extends StatelessWidget {
  const levelhome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('IOT'),
          leading: const Icon(Icons.menu),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.exit_to_app),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Wrapper()),
                );
                // do something
              },
            ),
          ]),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 0, 158, 250),
              Color.fromARGB(255, 62, 114, 182),
              Color.fromARGB(255, 55, 80, 163),
              Color.fromARGB(255, 48, 61, 138),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const addcontainer()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
