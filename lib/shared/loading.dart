import 'package:flutter/material.dart ';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SpinKitFadingCircle(
          color: Color.fromARGB(255, 33, 124, 243),
          size: 50.0,
        ),
      ),
    );
  }
}
