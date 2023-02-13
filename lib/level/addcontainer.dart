import 'package:flutter/material.dart';
import 'package:yoga/level/showlevel.dart';

class addcontainer extends StatelessWidget {
  const addcontainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Container'),
        // leading: const Icon(Icons.menu),
      ),
      body: Container(
        height: height,
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(4, 5, 4, 1),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    "Container Name",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Container Name',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Container Capacity",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Container Capacity',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {
                      // Add your onPressed code here!
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const showlevel()),
                      );
                    },
                    child: const Text("Add Container"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {
                      // Add your onPressed code here!
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const showlevel()),
                      );
                    },
                    child: const Text("Show Level"),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
