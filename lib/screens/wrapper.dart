import 'package:flutter/material.dart';
import 'package:yoga/screens/authenticate/authenticate.dart';
import 'package:yoga/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return either the Home or Authenticate widget
    return const Authenticate();
  }
}
