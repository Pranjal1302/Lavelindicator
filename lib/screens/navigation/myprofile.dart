import 'package:flutter/material.dart';

class myprofile extends StatefulWidget {
  const myprofile({Key? key}) : super(key: key);

  @override
  State<myprofile> createState() => _myprofileState();
}

class _myprofileState extends State<myprofile> {
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
        padding: const EdgeInsets.fromLTRB(5, 60, 5, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10.0,
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'My Profile',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 50.0,
            ),
            Card(
                elevation: 50,
                color: Colors.greenAccent,
                child: SizedBox(
                  height: 50,
                  width: 400,
                  child: Padding(
                    padding: EdgeInsets.all(11.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Username',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.edit,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                )),
            const SizedBox(),
            Card(
                elevation: 50,
                color: Colors.greenAccent,
                child: SizedBox(
                  height: 50,
                  width: 400,
                  child: Padding(
                    padding: EdgeInsets.all(11.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Height',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.edit,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                )),
            const SizedBox(),
            Card(
                elevation: 50,
                color: Colors.greenAccent,
                child: SizedBox(
                  height: 50,
                  width: 400,
                  child: Padding(
                    padding: EdgeInsets.all(11.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Weight',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.edit,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                )),
            const SizedBox(),
            Card(
                elevation: 50,
                color: Colors.greenAccent,
                child: SizedBox(
                  height: 50,
                  width: 400,
                  child: Padding(
                    padding: EdgeInsets.all(11.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Age',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.edit,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                )),
            const SizedBox(),
            Card(
                elevation: 50,
                color: Colors.greenAccent,
                child: SizedBox(
                  height: 50,
                  width: 400,
                  child: Padding(
                    padding: EdgeInsets.all(11.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Password',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.edit,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
