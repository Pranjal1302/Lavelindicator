import 'package:flutter/material.dart';

class seatedknee extends StatefulWidget {
  const seatedknee({Key? key}) : super(key: key);

  @override
  State<seatedknee> createState() => _seatedkneeState();
}

class _seatedkneeState extends State<seatedknee> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Seated Knee"),
        SizedBox(
          height: 200,
          width: 300,
          child: Image.network(
              "https://www.btod.com/blog/wp-content/uploads/2017/01/04-stretches-seated-knee-to-chest.jpg"),
        ),
        Text(
            "Bend your right knee and hug your knee towards your chest, placing hands on your right leg. "),
        Text("Hold for 30 seconds and repeat on the other side."),
        Text("You should feel a stretch along your side.")
      ],
    );
  }
}
