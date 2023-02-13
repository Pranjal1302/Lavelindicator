import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:yoga/main.dart';
import 'package:yoga/screens/home/user_list.dart';
import 'package:yoga/screens/navigation/explore.dart';
import 'package:yoga/screens/navigation/notification.dart';
import 'package:yoga/screens/navigation/profile.dart';
import 'package:yoga/screens/navigation/yogapage.dart';
import 'package:yoga/screens/navigation/yogasitting.dart';
import 'package:yoga/screens/wrapper.dart';
import 'package:yoga/services/auth.dart';
import 'package:yoga/services/database.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:yoga/models/Users.dart';

import '../navigation/exercisepage.dart';
import '../navigation/report.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _navigateToPage(context, index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Home()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const explore()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Report()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Profile()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    FirebaseDatabase database = FirebaseDatabase.instance;
    DatabaseReference ref = FirebaseDatabase.instance.ref("test");
    Stream<DatabaseEvent> stream = ref.onValue;
    stream.listen((DatabaseEvent event) {
      print(event.snapshot.value);
    });
    return StreamProvider<List<Users>>.value(
      value: DatabaseService(uid: '').users,
      initialData: const <Users>[],
      child: Scaffold(
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
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  child: Card(
                    color: const Color.fromARGB(255, 128, 210, 227),
                    elevation: 50,
                    child: SizedBox(
                      height: 150,
                      width: 400,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              const Text(
                                'Notifications',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Icon(
                            Icons.notifications_none,
                            color: Colors.black,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const notification()),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 250,
                  width: 400,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 250,
                        width: 175,
                        child: InkWell(
                          child: Card(
                            elevation: 50,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  'Yoga',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Icon(
                                  Icons.accessibility_new,
                                  color: Colors.black,
                                  size: 100,
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const YogaPage()),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 250,
                        width: 175,
                        child: InkWell(
                          child: Card(
                            elevation: 50,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  'Exercise',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Icon(
                                  Icons.directions_run,
                                  color: Colors.black,
                                  size: 100,
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ExercisePage()),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Card(
                  color: const Color.fromARGB(255, 229, 223, 149),
                  elevation: 50,
                  child: SizedBox(
                    height: 250,
                    width: 400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Daily Report',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 175,
                          child: Image.network(
                              "https://prd-api-aggregate.statcrunch.com/api/aggregation/documents/531754XHXWH?context=results_image&code=&extension=png"),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        bottomNavigationBar: Container(
          color: const Color.fromARGB(255, 255, 255, 255),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GNav(
              onTabChange: (index) {
                _navigateToPage(context, index);
              },
              rippleColor: const Color.fromARGB(255, 255, 255, 255),
              gap: 8,
              padding: const EdgeInsets.all(16),
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              color: const Color.fromARGB(255, 172, 128, 255),
              activeColor: const Color.fromARGB(255, 255, 255, 255),
              tabs: const <GButton>[
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                  backgroundColor: Color.fromARGB(255, 182, 160, 242),
                ),
                GButton(
                  icon: Icons.search,
                  text: 'Explore',
                  backgroundColor: Color.fromARGB(255, 152, 171, 171),
                ),
                GButton(
                  icon: Icons.add_circle_outline,
                  text: 'Report',
                  backgroundColor: Color.fromARGB(255, 152, 171, 171),
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                  backgroundColor: Color.fromARGB(255, 152, 171, 171),
                ),
              ],
              selectedIndex: 0,
            ),
          ),
        ),
        // appBar: AppBar(
        //   title: const Text('Home',
        //       style: TextStyle(
        //           color: Colors.black,
        //           fontSize: 30.0,
        //           fontWeight: FontWeight.bold)),
        //   backgroundColor: Color.fromARGB(255, 251, 251, 251),
        //   elevation: 0.0,
        //   actions: <Widget>[
        //     TextButton.icon(
        //       icon: const Icon(Icons.person, color: Colors.black),
        //       label:
        //           const Text('logout', style: TextStyle(color: Colors.black)),
        //       onPressed: () async {
        //         await AuthService().signOut();
        //         Navigator.push(
        //           context,
        //           MaterialPageRoute(builder: (context) => const Wrapper()),
        //         );
        //       },
        //     ),
        //   ],
        // ),
        // body: UserList(),
      ),
    );
  }
}
