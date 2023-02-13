import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:yoga/screens/navigation/myprofile.dart';
import 'package:yoga/screens/navigation/report.dart';

import '../../services/auth.dart';
import '../home/home.dart';
import '../wrapper.dart';
import 'explore.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
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

    return Scaffold(
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
      //       label: const Text('logout', style: TextStyle(color: Colors.black)),
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
          padding: const EdgeInsets.fromLTRB(5, 60, 5, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10.0,
              ),
              const CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage("assets/profile.png"),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'Name',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10.0,
              ),
              InkWell(
                  child: const Card(
                      elevation: 50,
                      color: Colors.greenAccent,
                      child: SizedBox(
                        height: 50,
                        width: 400,
                        child: Padding(
                          padding: EdgeInsets.all(11.0),
                          child: Text(
                            'My Profile',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      )),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const myprofile()),
                    );
                  }),
              const SizedBox(),
              const Card(
                  elevation: 50,
                  color: Colors.greenAccent,
                  child: SizedBox(
                    height: 50,
                    width: 400,
                    child: Padding(
                      padding: EdgeInsets.all(11.0),
                      child: Text(
                        'About Us',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  )),
              const SizedBox(),
              const Card(
                  elevation: 50,
                  color: Colors.greenAccent,
                  child: SizedBox(
                    height: 50,
                    width: 400,
                    child: Padding(
                      padding: EdgeInsets.all(11.0),
                      child: Text(
                        'Privacy Policy',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  )),
              const SizedBox(),
              const Card(
                  elevation: 50,
                  color: Colors.greenAccent,
                  child: SizedBox(
                    height: 50,
                    width: 400,
                    child: Padding(
                      padding: EdgeInsets.all(11.0),
                      child: Text(
                        'Restart Progress',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  )),
              const SizedBox(),
              InkWell(
                  child: const Card(
                      elevation: 50,
                      color: Colors.greenAccent,
                      child: SizedBox(
                        height: 50,
                        width: 400,
                        child: Padding(
                          padding: EdgeInsets.all(11.0),
                          child: Text(
                            'Logout',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      )),
                  onTap: () async {
                    await AuthService().signOut();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Wrapper()),
                    );
                  }),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GNav(
            onTabChange: (index) {
              _navigateToPage(context, index);
            },
            rippleColor: const Color.fromARGB(255, 255, 255, 255)!,
            gap: 8,
            padding: const EdgeInsets.all(16),
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            color: const Color.fromARGB(255, 172, 128, 255),
            activeColor: const Color.fromARGB(255, 255, 255, 255),
            tabs: const <GButton>[
              GButton(
                icon: Icons.home,
                text: 'Home',
                backgroundColor: Color.fromARGB(255, 152, 171, 171),
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
                backgroundColor: Color.fromARGB(255, 182, 160, 242),
              ),
            ],
            selectedIndex: 3,
          ),
        ),
      ),
    );
  }
}
